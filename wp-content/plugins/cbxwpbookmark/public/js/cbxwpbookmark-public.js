(function ($) {
	'use strict';

    function cbxwpbookmark_stripslashes (str) {
        // +   original by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
        // +   improved by: Ates Goral (http://magnetiq.com)
        // +      fixed by: Mick@el
        // +   improved by: marrtins
        // +   bugfixed by: Onno Marsman
        // +   improved by: rezna
        // +   input by: Rick Waldron
        // +   reimplemented by: Brett Zamir (http://brett-zamir.me)
        // +   input by: Brant Messenger (http://www.brantmessenger.com/)
        // +   bugfixed by: Brett Zamir (http://brett-zamir.me)
        // *     example 1: stripslashes('Kevin\'s code');
        // *     returns 1: "Kevin's code"
        // *     example 2: stripslashes('Kevin\\\'s code');
        // *     returns 2: "Kevin\'s code"
        return (str + '').replace(/\\(.?)/g, function (s, n1) {
            switch (n1) {
                case '\\':
                    return '\\';
                case '0':
                    return '\u0000';
                case '':
                    return '';
                default:
                    return n1;
            }
        });
    }


	$(document).ready(function () {




		var ajaxurl = cbxwpbookmark.ajaxurl;


		//on click add category(show category form panel)
		$('.cbxwpbkmarkaddnewcattrig').on('click', function (event) {
			event.preventDefault();

			var $this = $(this);

			var $bookmarkpanel = $this.parents('.cbxwpbkmarklistwrap');

			if ((cbxwpbookmark.max_cat_limit > 0) && (cbxwpbookmark.user_current_cat_count >= cbxwpbookmark.max_cat_limit)) {
				$this.hide();
				alert(cbxwpbookmark.max_cat_limit_error);
				return;
			}
			else {

				$bookmarkpanel.find('.cbxwpbkmarkselwrap').show(); //show bookmark categories
                $bookmarkpanel.find('.cbxwpbkmarkmanagewrap').hide();
				$bookmarkpanel.find('.cbxwpbkmarkmanageselwrap').hide(); //hide bookmark manage categories

				//$this.hide(); //hide this button
				$bookmarkpanel.find('.cbxwpbkmarkaddnewwrap').show(); //show category create form wrapper

				//focus the category name field
				$bookmarkpanel.find('.cbxwpbkmarkaddnewcatinput').focus();

				$bookmarkpanel.find('.cbxwpbkmarktrig_label').text(cbxwpbookmark.add_to_head_defult);

			}

		});

		//on click manage categories
		$('.cbxwpbkmarkmanagecattrig').on('click', function (event) {
			event.preventDefault();




			var $this = $(this);
			var $object_id 		= $this.data('object_id'); //post id
			var $object_type 	= $this.data('type'); //post type

			var $bookmarkpanel = $this.parents('.cbxwpbkmarklistwrap');



			$bookmarkpanel.find('.cbxwpbkmarkaddnewwrap').hide();

			$bookmarkpanel.find('.cbxwpbkmarkloading').show();

			var data = {
				'action'     : 'cbx_find_category',
				'security'   : cbxwpbookmark.nonce,
				'object_id'  : $object_id,
				'object_type': $object_type
			};


			$.post(ajaxurl, data, function (response) {
				response = $.parseJSON(response);


				if (response && response.code == 1) {
					//categories found
					$bookmarkpanel.find('.cbxwpbkmarkloading').hide();

					$bookmarkpanel.find('.cbxwpbkmarkselwrap').hide();
					$bookmarkpanel.find('.cbxwpbkmarkmanageselwrap').show();


					var cats = $.parseJSON(response.cats);

					var catoptions_add 	= '';
					var catoptions_edit = '';


					cbxwpbookmark.user_current_cat_count = cats.length;
					cbxwpbookmark.user_current_cats = cats;

					$.each(cats, function (key, val) {
                        catoptions_add += '<li class="cbxlbjs-item" data-catname="'+cbxwpbookmark_stripslashes(cats[key].cat_name)+'" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';

                        catoptions_edit += '<li class="cbxlbjs-item-manage" data-catname="'+cbxwpbookmark_stripslashes(cats[key].cat_name)+'" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name-manage">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';


					});

					$bookmarkpanel.find('.cbxwpbkmarklist').html(catoptions_add);
					$bookmarkpanel.find('.cbxwpbkmarklist-manage').html(catoptions_edit);

					$bookmarkpanel.find('.cbxwpbkmarktrig_label').text(cbxwpbookmark.category_loaded_edit);


				}
				else {
					//failed to get category for this user

					$bookmarkpanel.find('.cbxwpbkmarkloading').hide();



					$bookmarkpanel.find('.cbxwpbkmarkselwrap').hide();
					$bookmarkpanel.find('.cbxwpbkmarkmanageselwrap').show();

					//if no category found show message and put option to create one
					$bookmarkpanel.find('.cbxwpbkmarklist-manage').hide();
					$bookmarkpanel.find('.cbxwpbkmark-lbjs-manage').append('<p class="cbxwpbkmarklist-nocatfound"><a data-clicked="0" class="cbxwpbkmarklist-nocatfoundtrig" href="#">' + response.msg + '</a></p>');

				}

			});
		});


		//on click create category button
		$('.cbxwpbkmarkaddnewcatcreate').on('click', function (event) {
			event.preventDefault();


			var $this 			= $(this);

			var $addnewwrap 	= $this.parents('.cbxwpbkmarkaddnewwrap');
			var $globalparent 	= $this.parents('.cbxwpbkmarklistwrap');

			if ((cbxwpbookmark.max_cat_limit > 0) && (cbxwpbookmark.user_current_cat_count >= cbxwpbookmark.max_cat_limit)) {
				$globalparent.find('.cbxwpbkmarkaddnewwrap').hide();
				alert(cbxwpbookmark.max_cat_limit_error);
				return;
			}


			var $cat_name 		= $addnewwrap.find('.cbxwpbkmarkaddnewcatinput');
			var $object_id 		= $globalparent.data('object_id');
			var $object_type 	= $globalparent.data('type');

			var $privacy = $addnewwrap.find('.cbxwpbkmarkaddnewcatselect');


			$cat_name.removeClass('error');
			$addnewwrap.find(".cbxwpbkmarkaddnewaction_error").hide().removeClass('cbxwpbkmarkaddnewaction_success').text('');


			//check if the input text field is empty or not
			//if the text input for category name validate then send ajax request

			if ($cat_name.val() != '') {


				$globalparent.find('.cbxwpbkmarkloading').show();
				//send ajax request
				var data = {
					'action'   : 'cbx_add_category',
					'security' : cbxwpbookmark.nonce,
					'cat_name' : $cat_name.val(),
					'privacy'  : $privacy.find('input[type="radio"]:checked').val(),
					'object_id': $object_id,
					'object_type': $object_type
				};

				// We can also pass the url value separately from ajaxurl for front end AJAX implementations
				$.post(ajaxurl, data, function (response) {

					response = $.parseJSON(response);
					if (response.code == 1) {

						//category created
						$cat_name.val('');

						var cats = $.parseJSON(response.cats);
						cbxwpbookmark.user_current_cat_count = cats.length;
						cbxwpbookmark.user_current_cats = cats;

                        var catoptions_add 	= '';
                        var catoptions_edit = '';

						$.each(cats, function (key, val) {
                            catoptions_add += '<li class="cbxlbjs-item" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';

                            catoptions_edit += '<li class="cbxlbjs-item-manage" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name-manage">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';
						});


						$globalparent.find('.cbxwpbkmarklist').show();
						$globalparent.find('.cbxwpbkmarklist-nocatfound').remove();

						$globalparent.find('.cbxwpbkmarklist').html(catoptions_add);
						$globalparent.find('.cbxwpbkmarklist-manage').html(catoptions_edit);

						$globalparent.find('.cbxwpbkmarkloading').hide();

						//show success message
						$cat_name.val(''); //reset category name
						$addnewwrap.find(".cbxwpbkmarkaddnewaction_error").show().addClass('cbxwpbkmarkaddnewaction_success').text(response.msg);

						//check if max user cat limit crossed
						if ((cbxwpbookmark.max_cat_limit > 0) && (cbxwpbookmark.user_current_cat_count >= cbxwpbookmark.max_cat_limit)) {
							//then hide the category create panel
							$addnewwrap.hide();
						}

					}
					else {
						//failed or duplicate

						$globalparent.find('.cbxwpbkmarkloading').hide('slow');

						$addnewwrap.find(".cbxwpbkmarkaddnewaction_error").show().text(response.msg);

						$cat_name.addClass('error');


					}
				});

			}
			else {
				$cat_name.addClass('error');
				$addnewwrap.find(".cbxwpbkmarkaddnewaction_error").show().text(cbxwpbookmark.category_name_empty);
			}

		});


		//on click close category panel
		$('.cbxwpbkmarkaddnewcatclose').on('click', function (event) {
			event.preventDefault();

			var $this = $(this);
			var $parent = $this.parents('.cbxwpbkmarkaddnewcat');

			$parent.find('.cbxwpbkmarkaddnewwrap').hide();


			//check if max user cat limit crossed
			if ((cbxwpbookmark.max_cat_limit > 0) && (cbxwpbookmark.user_current_cat_count >= cbxwpbookmark.max_cat_limit)) {
				//then hide the category create panel
				$parent.find('.cbxwpbkmarkaddnewcattrig').hide();
			}
			else {
				$parent.find('.cbxwpbkmarkaddnewcattrig').show();
			}


		});


        //manage: on click close category panel
        $('.cbxwpbkmarkmanagecatclose').on('click', function (event) {
            event.preventDefault();

            var $this = $(this);
            var $bookmarkpanel = $this.parents('.cbxwpbkmarklistwrap');



            $bookmarkpanel.find('.cbxwpbkmarkselwrap').show();
            $bookmarkpanel.find('.cbxwpbkmarkmanageselwrap').hide();
            $bookmarkpanel.find('.cbxwpbkmarkmanagewrap').hide();
            $bookmarkpanel.find('.cbxwpbkmarktrig_label').text(cbxwpbookmark.add_to_head_defult);


        });

        //manage category: on click delete category button
        $('.cbxwpbkmarkmanagecatdelete').on('click', function (event) {
            event.preventDefault();


            if (!confirm(cbxwpbookmark.areyousuretodeletecat)) {
                return false;
            }

            var $this = $(this);
            var $managewrap 	= $this.parents('.cbxwpbkmarkmanagewrap');
            var $globalparent 	= $this.parents('.cbxwpbkmarklistwrap');




            var $cat_name 		= $managewrap.find('.cbxwpbkmarkmanagecatinput');
            var $cat 			= $managewrap.find('.cbxwpbkmarkmanagecatid');
            var $object_id 		= parseInt($globalparent.data('object_id'));
            var $object_type 	= $globalparent.data('type');
            //var $privacy 		= $managewrap.find('.cbxwpbkmarkmanagecatselect');

			var $cat_id = $cat.val();

            var data = {
                'action': 'cbx_delete_bookmark_category',
                'security': cbxwpbookmark.nonce,
                'id': $cat_id,
                'object_type': $object_type,
                'object_id': $object_id,
            };

            if($cat_id > 0){
                $globalparent.find('.cbxwpbkmarkloading').show();
                $this.attr('disabled', true);

                $.post(ajaxurl, data, function (response) {

                    $globalparent.find('.cbxwpbkmarkloading').hide();
                    response = $.parseJSON(response);


                    if (response.msg == 0) {

                        var cats = $.parseJSON(response.cats);
                        cbxwpbookmark.user_current_cat_count = cats.length;
                        cbxwpbookmark.user_current_cats = cats;

                        var catoptions_add 	= '';
                        var catoptions_edit = '';

                        $.each(cats, function (key, val) {
                            catoptions_add += '<li class="cbxlbjs-item" data-catname="'+cats[key].cat_name+'" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';

                            catoptions_edit += '<li class="cbxlbjs-item-manage" data-catname="'+cats[key].cat_name+'" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name-manage">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';
                        });


                        $globalparent.find('.cbxwpbkmarklist-manage').show();
                        $globalparent.find('.cbxwpbkmarklist-nocatfound').remove();

                        //update category list for add view and edit view
                        $globalparent.find('.cbxwpbkmarklist').html(catoptions_add);
                        $globalparent.find('.cbxwpbkmarklist-manage').html(catoptions_edit);


                        //reset the edit fields
                        $cat_name.val(''); //reset category name field
                        $cat.val(''); //reset hidden category id field

                        //hide the category edit panel
                        $managewrap.hide();

                        // success Message
                        var message = cbxwpbookmark.category_delete_success;
                        $managewrap.find(".cbxwpbkmarkmanageaction_error").hide().addClass('cbxwpbkmarkmanageaction_success').text('');

                        $globalparent.find('.cbxwpbkmarktrig_label').text(message);



                    }
                    else {
                        var message = cbxwpbookmark.category_delete_error;
                        $managewrap.find(".cbxwpbkmarkmanageaction_error").show().text(message);

                    }

                    $this.attr('disabled', false);


                });

			}







        });

        //manage category: on click Edit category button
        $('.cbxwpbkmarkmanagecatcreate').on('click', function (event) {
            event.preventDefault();

            var $this 			= $(this);
            var $managewrap 	= $this.parents('.cbxwpbkmarkmanagewrap');
            var $globalparent 	= $this.parents('.cbxwpbkmarklistwrap');


            var $cat_name 		= $managewrap.find('.cbxwpbkmarkmanagecatinput');
            var $cat_id 		= $managewrap.find('.cbxwpbkmarkmanagecatid');
            var $object_id 		= parseInt($globalparent.data('object_id'));
            var $object_type 	= $globalparent.data('type');
            var $privacy 		= $managewrap.find('.cbxwpbkmarkmanagecatselect');

            $cat_name.removeClass('error');
            $managewrap.find(".cbxwpbkmarkmanageaction_error").hide().removeClass('cbxwpbkmarkmanageaction_success').text('');




            //check if the input text field is empty or not
            //if the text input for category name validate then send ajax request

            if ($cat_name.val() != '') {

                $globalparent.find('.cbxwpbkmarkloading').show();
                //send ajax request
                var data = {
                    'action'   : 'cbx_edit_category',
                    'security' : cbxwpbookmark.nonce,
                    'cat_name' : $cat_name.val(),
                    'cat_id'   : $cat_id.val(),
                    'privacy'  : $privacy.find('input[type="radio"]:checked').val(),
                    'object_id': $object_id,
                    'object_type': $object_type
                };


                // We can also pass the url value separately from ajaxurl for front end AJAX implementations
                $.post(ajaxurl, data, function (response) {
                    response = $.parseJSON(response);
                    if (response.code == 1) {

                        $cat_name.val('');

                        var cats = $.parseJSON(response.cats);
                        cbxwpbookmark.user_current_cat_count = cats.length;
                        cbxwpbookmark.user_current_cats = cats;

                        var catoptions_add 	= '';
                        var catoptions_edit = '';

                        $.each(cats, function (key, val) {
                            catoptions_add += '<li class="cbxlbjs-item" data-catname="'+cats[key].cat_name+'" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';

                            catoptions_edit += '<li class="cbxlbjs-item-manage" data-catname="'+cats[key].cat_name+'" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name-manage">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';
                        });


                        $globalparent.find('.cbxwpbkmarklist-manage').show();
                        $globalparent.find('.cbxwpbkmarklist-nocatfound').remove();

                        $globalparent.find('.cbxwpbkmarklist').html(catoptions_add);
                        $globalparent.find('.cbxwpbkmarklist-manage').html(catoptions_edit);

                        $globalparent.find('.cbxwpbkmarkloading').hide();



                        //show success message


                        $managewrap.find(".cbxwpbkmarkmanageaction_error").show().addClass('cbxwpbkmarkmanageaction_success').text(response.msg);
                    }
                    else {
                        //failed or duplicate

                        $globalparent.find('.cbxwpbkmarkloading').hide('slow');

                        $managewrap.find(".cbxwpbkmarkmanageaction_error").show().text(response.msg);

                        $cat_name.addClass('error');

                    }
                });

            }
            else {
                $cat_name.addClass('error');
                $managewrap.find(".cbxwpbkmarkmanageaction_error").show().text(cbxwpbookmark.category_name_empty);
            }

        });//manage: on click Edit category button


		//on click on +add  it will open the boomark panel
		$('.cbxwpbkmarktrig').on('click', function (event) {
			event.stopPropagation();
			event.preventDefault();

			var $this = $(this);
			var $loggedin 		= parseInt($this.data('loggedin')); //user logged in or not


			//if guest return with warning
			if($loggedin == 0){

                var $bookmarkguestpanel = $this.next('.cbxwpbkmarkguestwrap');
                $($bookmarkguestpanel).toggle("fast", function () {

				});
                return;
			}



			var $object_id 		= $this.data('object_id'); //post id
			var $object_type 	= $this.data('type'); //post type

			var $bookmarkpanel = $this.next('.cbxwpbkmarklistwrap');

			$bookmarkpanel.find('.cbxlbjs-searchbar').val('');
			$bookmarkpanel.find('.cbxwpbkmarkaddnewcatinput').val('').removeClass('error');
			$bookmarkpanel.find(".cbxwpbkmarkaddnewaction_error").hide().text('').removeClass('cbxwpbkmarkaddnewaction_success')

			$bookmarkpanel.find('.cbxwpbkmarkaddnewwrap').hide();
			$bookmarkpanel.find('.cbxwpbkmarkmanagewrap').hide();
			$bookmarkpanel.find('.cbxwpbkmarkmanageselwrap').hide();
			$bookmarkpanel.find('.cbxwpbkmarkaddnewcattrig').show();
			$bookmarkpanel.find('.cbxwpbkmarktrig_label').text(cbxwpbookmark.add_to_head_defult);

			$($bookmarkpanel).toggle("fast", function () {

				//if current user can not create category
				if (parseInt(cbxwpbookmark.user_can_create_cat) == 0) {
					$bookmarkpanel.find('.cbxwpbkmarkaddnewwrap').remove();
					$bookmarkpanel.find('.cbxwpbkmarkaddnewcattrig').remove();
				}

				//show the ajax icon
				$bookmarkpanel.find('.cbxwpbkmarkloading').show();
				//send ajax request to popular the categories as fresh

				var data = {
					'action'     : 'cbx_find_category',
					'security'   : cbxwpbookmark.nonce,
					'object_id'  : $object_id,
					'object_type': $object_type
				};


				$.post(ajaxurl, data, function (response) {
					response = $.parseJSON(response);


					if (response && response.code == 1) {
						//categories found
						$bookmarkpanel.find('.cbxwpbkmarkloading').hide();
						$bookmarkpanel.find('.cbxwpbkmarkselwrap').show();

						var cats = $.parseJSON(response.cats);
						var $bookmark_count 	= parseInt(response.bookmark_count);
						var $bookmark_byuser 	= parseInt(response.bookmark_byuser);


						if($bookmark_byuser > 0){
                            $this.addClass('cbxwpbkmarktrig-marked');
						}
						else{
                            $this.removeClass('cbxwpbkmarktrig-marked');
						}

						//update bookmark count
                        $this.find('.cbxwpbkmarktrig-count').html($bookmark_count);



                        var catoptions_add 	= '';
                        var catoptions_edit = '';


						cbxwpbookmark.user_current_cat_count = cats.length;
						cbxwpbookmark.user_current_cats = cats;

						$.each(cats, function (key, val) {

                            catoptions_add += '<li class="cbxlbjs-item" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';

                            catoptions_edit += '<li class="cbxlbjs-item-manage" data-privacy="' + cats[key].privacy + '" data-incat="' + cats[key].incat + '"  data-value="' + cats[key].id + '"><span title="' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '" class="cbxlbjs-item-name-manage">' + cbxwpbookmark_stripslashes(cats[key].cat_name) + '</span></li>';

						});

						$bookmarkpanel.find('.cbxwpbkmarklist').html(catoptions_add);
						$bookmarkpanel.find('.cbxwpbkmarklist-manage').html(catoptions_edit);

						if ((cbxwpbookmark.max_cat_limit > 0) && (cbxwpbookmark.user_current_cat_count >= cbxwpbookmark.max_cat_limit)) {
							$bookmarkpanel.find('.cbxwpbkmarkaddnewcattrig').hide();
						}
					}
					else {
						//failed to get category for this user

						$bookmarkpanel.find('.cbxwpbkmarkloading').hide();
						$bookmarkpanel.find('.cbxwpbkmarkselwrap').show();

						//if no category found show message and put option to create one
						$bookmarkpanel.find('.cbxwpbkmarklist').hide();
						$bookmarkpanel.find('.cbxwpbkmark-lbjs').append('<p class="cbxwpbkmarklist-nocatfound"><a data-clicked="0" class="cbxwpbkmarklist-nocatfoundtrig" href="#">' + response.msg + '</a></p>');

					}

				});
			});

		});


		//on click on nocategory found
		$('.cbxwpbkmarkselwrap').on('click', 'a.cbxwpbkmarklist-nocatfoundtrig', function (event) {
			event.preventDefault();

			var $this = $(this);
			var $clicked = parseInt($this.data('clicked'));

			if (!$clicked) {
				$('.cbxwpbkmarkaddnewcattrig').click();
				$this.data('clicked', 1)
			}
		});


		//on click on close icon disable the bookmark popup
		$('.cbxwpbkmarklistwrap').on('click', 'i.cbxwpbkmarktrig_close', function (event) {

			var $this = $(this);
			var $parent = $this.parents('.cbxwpbkmarklistwrap');
			$parent.fadeOut();

		});
		//end on click on close icon disbale the bookmark popup

		//on click on close icon disable the bookmark popup for guest view
		$('.cbxwpbkmarkguestwrap').on('click', 'a.cbxwpbkmarkguesttrig_close', function (event) {

			var $this = $(this);
			var $parent = $this.parents('.cbxwpbkmarkguestwrap');
			$parent.fadeOut();

		});
		//end on click on close icon disable the bookmark popup for guest view

		//on click on any where of body except the bookmark popup close the bookmark popup
		$("body").mouseup(function (e) {
			var subject = $(".cbxwpbkmarklistwrap");

			if ((e.target.id != 'cbxwpbkmarklistwrap-' + subject.data('object_id')) && !subject.has(e.target).length) {
				subject.fadeOut();

			}

			var subject2 = $(".cbxwpbkmarkguestwrap");

			if ((e.target.id != 'cbxwpbkmarkguestwrap-' + subject.data('object_id')) && !subject.has(e.target).length) {
				subject2.fadeOut();

			}
		});
		//on click on any where of body except the bookmark popup close the bookmark popup

		//adding click event on the list
		$('.cbxwpbkmark-lbjs').on('click', '.cbxlbjs-item', function (e) {


			var $bookmarkpanel = $(this).parents('.cbxwpbkmarklistwrap');
			$bookmarkpanel.find('.cbxwpbkmarkloading').show();

            var $bookmarkpanel_parent 	= $bookmarkpanel.parent('.cbxwpbkmarkwrap');
			var $cbxwpbkmarktrig  		= $bookmarkpanel_parent.find('.cbxwpbkmarktrig');



			var $object_id = $bookmarkpanel.data('object_id');
			var $object_type = $bookmarkpanel.data('type'); //object type


			var $cat_id = $(this).attr('data-value');

			var $item = $(this);

			//now send ajax request to save this post id and category as bookmark for this user
			//post id already in variable $object_id

			var addcat = {
				'action'     : 'cbx_add_bookmark',
				'security'   : cbxwpbookmark.nonce,
				'cat_id'     : $cat_id,
				'object_id'  : $object_id,
				'object_type': $object_type
			};

			$.post(ajaxurl, addcat, function (response) {

				response = $.parseJSON(response);
				var $bookmark_count = parseInt(response.bookmark_count);
                var $bookmark_byuser 	= parseInt(response.bookmark_byuser);


                $cbxwpbkmarktrig.find('.cbxwpbkmarktrig-count').html($bookmark_count);

                if($bookmark_byuser > 0){
                    $cbxwpbkmarktrig.addClass('cbxwpbkmarktrig-marked');
				}
				else{
                    $cbxwpbkmarktrig.removeClass('cbxwpbkmarktrig-marked');
				}

				if (response && response.code == 1) {
					$item.attr('data-incat', response.operation);

					$bookmarkpanel.find('.cbxwpbkmarkloading').hide();
					$bookmarkpanel.find('.cbxwpbkmarktrig_label').text(response.msg);
				}
				else {
					$bookmarkpanel.find('.cbxwpbkmarktrig_label').text(response.msg);
					$bookmarkpanel.find('.cbxwpbkmarkloading').hide();
				}
			});


		});

		//Manage: adding click event on the list to edit
		$('.cbxwpbkmark-lbjs-manage').on('click', '.cbxlbjs-item-manage', function (e) {


			var $bookmarkpanel = $(this).parents('.cbxwpbkmarklistwrap');


			var $object_id      = $bookmarkpanel.data('object_id');
			var $object_type    = $bookmarkpanel.data('type'); //object type

			var $this           = $(this);
			var $cat_id         = parseInt($this.attr('data-value'));
			var $cat_privacy    = parseInt($this.attr('data-privacy'));
			var $cat_name       = $this.attr('data-catname');

			$bookmarkpanel.find('.cbxwpbkmarkmanagewrap').show();
			$bookmarkpanel.find('.cbxwpbkmarkmanagecatinput').val($cat_name).focus();
			$bookmarkpanel.find('.cbxwpbkmarkmanagecatid').val($cat_id);


			if($cat_privacy == 0){
				$bookmarkpanel.find('#cbxbookmarkmanageswitch_right_'+$object_id).click();
			}
			else{
				$bookmarkpanel.find('#cbxbookmarkmanageswitch_left_'+$object_id).click();
			}

		});


		/* User Front Admin */


        //my category delete button action
        $('.cbxbookmark-category-list').on('click', 'a.cbxbookmark-delete-btn', function (event) {
            event.preventDefault();


            if (!confirm(cbxwpbookmark.areyousuretodeletecat)) {
                return false;
            }

            var $this 			= $(this);
            var $id 			= $this.data('id');
            //var $object_id 		= parseInt($this.data('object_id'));
            //var $object_type 	= $this.data('object_type');




            var data = {
                'action'  : 'cbx_delete_bookmark_category',
                'security': cbxwpbookmark.nonce,
                'id'      : parseInt($id)
            };
            // We can also pass the url value separately from ajaxurl for front end AJAX implementations


			if(parseInt($id) > 0){
                $this.attr('disabled', true);

                $.post(ajaxurl, data, function (response) {

                    response = $.parseJSON(response);


                    if (response.msg == 0) {

                        // success Message
                        var message = cbxwpbookmark.category_delete_success;

                        // Remove the li tag if the category deleted
                        $($this).parent("li").remove();

                        // Loading success message on .msg div element
                        //console.log($(".msg"));
                        //$(".msg").html(message);

                    }
                    else {
                        var message = cbxwpbookmark.category_delete_error;
                        //console.log($(".msg"));
                        //$(".msg").html(message);
                    }

                    /*$this.find('span').css({
                        'display': 'none'
                    });*/

                    $this.attr('disabled', false);
                });
			}

			/*$this.find('span').css({
				'display': 'inline-block'
			});*/



        });

		//my category update event

		//save button action
		$('.cbxbookmark-category-list').on('click', 'a.cbxbookmark-cat-save', function (event) {


			event.preventDefault();


			var $parent = $(this).closest('li.cbxbookmark-mycat-item');
			var $this = $(this);

			var $ucatid = $parent.data('id'); //get this value from the parent data attribute


			//get new value
			var $ucatname = $parent.find('.cbxbmedit-catname').val();
			var $uprivacy = $parent.find('.cbxbmedit-privacy').val();


			var updatedata = {
				'action'  : 'cbx_update_bookmark_category',
				'security': cbxwpbookmark.nonce,
				'id'      : $ucatid,
				'catname' : $ucatname,
				'privacy' : $uprivacy
			};

			$this.find('span').css({
				'display': 'inline-block'
			});

			// We can also pass the url value separately from ajaxurl for front end AJAX implementations
			$.post(ajaxurl, updatedata, function (response) {

				response = $.parseJSON(response);

				if (response.flag == 1) {
					$parent.find(".cbxbookmark-mycat-editbox").hide();
					$parent.data('privacy', response.privacy);
					$parent.data('name', response.catname);
					$parent.find(".cbxlbjs-item-widget").html(response.catname);
				}
				else if (response.flag == 0) {
					$parent.parent('.cbxbookmark-category-list').prev('.cbxbookmark-errormsg').html(response.msg);
				}

				$this.find('span').css({
					'display': 'none'
				});

			});

		});


		//my category edit button action
		//edit button action and it opens the edit panel for the clicked item
		$('.cbxbookmark-category-list').on('click', 'a.cbxbookmark-edit-btn', function (event) {

			event.preventDefault();
			var $parent = $(this).parent('.cbxbookmark-mycat-item');

			var $this = $(this);


			var $catid = $parent.data('id');
			var $catname = $parent.data('name');
			var $privacy = $parent.data('privacy');

			var $editpanel = $parent.find(".cbxbookmark-mycat-editbox");
			if ($editpanel.length == 0) {
				var $template = $.parseJSON(cbxwpbookmark.cat_template);

				/* Repalcing Input Values */
				var $template = $template.replace(/##catname##/g, $catname);
				$parent.append($template);

				if ($privacy == 0) {
					$parent.find(".cbxbmedit-privacy option:eq(1)").prop('selected', true);
					$parent.find(".cbxbmedit-privacy option:eq(0)").prop('selected', false);
				}

				if ($privacy == 1) {
					$parent.find(".cbxbmedit-privacy option:eq(0)").prop('selected', true);
					$parent.find(".cbxbmedit-privacy option:eq(1)").prop('selected', false);
				}
			}
			else {
				$editpanel.show();
				$parent.find('.cbxbmedit-catname').val($catname);
				//$parent.find('.cbxbmedit-privacy').val($privacy);

				if ($privacy == 0) {
					$parent.find(".cbxbmedit-privacy option:eq(1)").prop('selected', true);
					$parent.find(".cbxbmedit-privacy option:eq(0)").prop('selected', false);
				}

				if ($privacy == 1) {
					$parent.find(".cbxbmedit-privacy option:eq(0)").prop('selected', true);
					$parent.find(".cbxbmedit-privacy option:eq(1)").prop('selected', false);
				}
			}


		});


		//close action for edit panel for each single item
		$('.cbxbookmark-category-list').on('click', '.cbxbookmark-cat-close', function (e) {

			e.preventDefault();
			$(this).parent(".cbxbookmark-mycat-editbox").css("display", "none");

		});






		/**
		 * Delete bookmark
		 */
		$('.cbxwpbookmark-mylist').on('click', 'a.cbxbookmark-post-delete', function (event) {
			event.preventDefault();

			if (!confirm(cbxwpbookmark.areyousuretodeletebookmark)) {
				return false;
			}


			var $postdelete = $(this);
			var $wrapper = $postdelete.parents('div.cbxwpbookmark-mylist-wrap');

			var $object_id 		= $postdelete.data("object_id");
			var $bookmark_id 	= $postdelete.data("bookmark_id");

			var data = {
				'action'  : 'cbx_delete_bookmark_post',
				'security': cbxwpbookmark.nonce,
				'object_id'  : $object_id,
				'bookmark_id'  : $bookmark_id,
			};
			// We can also pass the url value separately from ajaxurl for front end AJAX implementations

			if ($postdelete) {

				$postdelete.find('span').css({
					'display': 'inline-block'
				});

				$.post(ajaxurl, data, function (response) {
					response = $.parseJSON(response);

					if (response.msg == 0) {
						// Remove the li tag if the bookmark is deleted
						$postdelete.parent("li").remove();

						var $success_html = $('<div class="cbxbookmark-alert cbxbookmark-alert-success">' + cbxwpbookmark.bookmark_removed + '</div>');
						$wrapper.prepend($success_html);


						if ($wrapper.find('ul.cbxwpbookmark-mylist li').length === 0) {
							$wrapper.find('ul.cbxwpbookmark-mylist').append('<li>' + cbxwpbookmark.bookmark_removed_empty + '</li>')
						}
					}
					else if (response.msg == 1) {
						var $error_html = $('<div class="cbxbookmark-alert cbxbookmark-alert-success">' + cbxwpbookmark.bookmark_removed_failed + '</div>');
						$wrapper.prepend($error_html);
					}
					$postdelete.find('span').css({
						'display': 'none'
					});
				});


			}
		});


		//implementing the bookmark load more feature

		$('.cbxwpbookmark-mylist-wrap').on('click', 'a.cbxbookmark-more', function (e) {
			e.preventDefault();
			var _this = $(this);
			var $wrapper = _this.parents('div.cbxwpbookmark-mylist-wrap');


			$wrapper.find('.cbxwpbm_ajax_icon').show();


			var limit = _this.data('limit');
			var offset = _this.data('offset');
			var catid = _this.data('catid');

			var order = _this.data('order');
			var orderby = _this.data('orderby');
			var userid = _this.data('userid');

			var totalpage = _this.data('totalpage');
			var currpage = _this.data('currpage');
			var allowdelete = _this.data('allowdelete');

			if (currpage + 1 >= totalpage) {
				_this.hide();
			} else {
				_this.show();
			}

			var addcat = {
				'action'     : 'cbx_bookmark_loadmore',
				'security'   : cbxwpbookmark.nonce,
				'limit'      : limit,
				'offset'     : offset,
				'catid'      : catid,
				'order'      : order,
				'orderby'    : orderby,
				'userid'     : userid,
				'allowdelete': allowdelete
			};

			$.post(ajaxurl, addcat, function (response) {

				response = $.parseJSON(response);

				if (response.code) {
					_this.data('offset', limit + offset);
					_this.data('currpage', currpage + 1);

					$wrapper.find('ul.cbxwpbookmark-mylist').append(response.data);
					$wrapper.find('.cbxwpbm_ajax_icon').hide();


				} else {
					var $error_html = $('<div class="cbxbookmark-alert cbxbookmark-alert-error">' + cbxwpbookmark.error_msg + response.code + '</div>');
					$wrapper.find('ul.cbxwpbookmark-mylist').append($error_html);
				}


			});


		});

		//category search using fuzzy logic
		$(".cbxwpbkmarkwrap").on('keyup', '.cbxlbjs-searchbar', function () {


			var $this = $(this);
			var val = $this.val();

			var catlistholder = $this.parent('.cbxlbjs-searchbar-wrapper').next('.cbxwpbkmarklist');

			if (this.value.length > 0) {
				catlistholder.find('li').hide().filter(function () {
					return $(this).text().toLowerCase().indexOf(val.toLowerCase()) != -1;
				}).show();
			}
			else {
				catlistholder.find('li').show();
			}

		});

		//category search using fuzzy logic
		$(".cbxwpbkmarkmanageselwrap").on('keyup', '.cbxlbjs-searchbar-manage', function () {


			var $this = $(this);
			var val = $this.val();

			var catlistholder = $this.parent('.cbxlbjs-searchbar-wrapper-manage').next('.cbxwpbkmarklist-manage');

			if (this.value.length > 0) {
				catlistholder.find('li').hide().filter(function () {
					return $(this).text().toLowerCase().indexOf(val.toLowerCase()) != -1;
				}).show();
			}
			else {
				catlistholder.find('li').show();
			}

		});


	});

})(jQuery);


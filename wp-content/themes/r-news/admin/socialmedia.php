	<?php

if($_POST){


	$FacebookURL = $_POST['FacebookURL'];
	$TwitterURL = $_POST['TwitterURL'];
	$InstagramURL = $_POST['InstagramURL'];
	$GoogleURL = $_POST['GoogleURL'];
	$YoutubeURL = $_POST['YoutubeURL'];
	if(isset($FacebookURL))
		update_option( "FacebookURL", $FacebookURL );
	if(isset($TwitterURL))
		update_option( "TwitterURL", $TwitterURL );
	if(isset($GoogleURL))
		update_option( "GoogleURL", $GoogleURL );
	if(isset($InstagramURL))
		update_option( "InstagramURL", $InstagramURL );
	if(isset($YoutubeURL))
		update_option( "YoutubeURL", $YoutubeURL );

}


	?>
	
	<h1>Social Media </h1>
	
	<form method="post">
		<table>
		<tr>
			<td> Facebook </td>	
			<td> : </td>	
			<td> <input type="text" name="FacebookURL" value="<?php echo get_option("FacebookURL") ?>"> </td>	
		</tr>	

		<tr>
			<td> Twitter </td>	
			<td> : </td>	
			<td> <input type="text" name="TwitterURL" value="<?php echo get_option("TwitterURL") ?>"> </td>	
		</tr>	

		<tr>
			<td> Instagram </td>	
			<td> : </td>	
			<td> <input type="text" name="InstagramURL" value="<?php echo get_option("InstagramURL") ?>"> </td>	
		</tr>	
		
		<tr>
			<td> Google </td>	
			<td> : </td>	
			<td> <input type="text" name="GoogleURL" value="<?php echo get_option("GoogleURL") ?>" > </td>	
		</tr>	
		
		<tr>
			<td> Youtube </td>	
			<td> : </td>	
			<td> <input type="text" name="YoutubeURL" value="<?php echo get_option("YoutubeURL") ?>"> </td>	
		</tr>	

		<tr>
			<td> </td>	
			<td>   </td>	
			<td> <input type="submit" name="Submit"> </td>	
		</tr>	
	
		</table>
	
	
</form>

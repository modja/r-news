<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'ralali');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'password');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ']rmL`+cFD3e!{%X=c7n/,Z4]2vnVC.H1*Kp#Y;0.BfKEirX:yUfrK6|<pUQ74SBy');
define('SECURE_AUTH_KEY',  '&?,/k,TO2lbkUuO9ZH6lW_S`Bn?$$$vo;}lpxOb-}t^YLS{Qr(k!H+II9vCmmDf#');
define('LOGGED_IN_KEY',    'Ops,u}`Er_fH780iN^duX#o)WO8{Cgn5/bv+wPN:e|2q~`tc-r~tS{zxWmC.YUuI');
define('NONCE_KEY',        'v^*!,7J PgL:GwLi_R$XbA/K=H]B@{E0U6*vfY-IItdkc%cvkN*[G%LfmSHBf=Qv');
define('AUTH_SALT',        'C#{a$^cy%G^x}pV.!u6X?d}Q<3Kvs3^CLCp[%A4bw.0{1x3Qn3L,51|,h@vlutpV');
define('SECURE_AUTH_SALT', 'H*Dm6V[T?0tU_Laf)!m5a+}<G|wtGEL3Nza6X<21^{enVI}WNJfD*{JPCKz86Xi}');
define('LOGGED_IN_SALT',   '`Wg%wmMErUXT:&a^t!NY/,I_:b`q`|u:yp!&2MrzRf}h(w8l [LE`={u$z.t^/$t');
define('NONCE_SALT',       'eNT`&HJ_0TxSDBG|v&Nahm6J##xab7P8BX(W~$3xR(LaT]!b*IB+4=mf kss0va^');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'GearUp' );

/** Database username */
define( 'DB_USER', 'gearup' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'gb/^T-?-V.n4LfC$b8Ey8z>AgP~8sCzhfN8oZ]j^0L@-D!H915+_:LUlt;[i@$DG' );
define( 'SECURE_AUTH_KEY',  '#P<m0 ;Ke3-FyZe9kPnQGi({|dLaVpGWCcF+sDw :29zykZ5|0Eu#+gd~Qu%y`{a' );
define( 'LOGGED_IN_KEY',    'g= <sBX[&ID;whpXPm:{(FwET8@PcAUs%y h]t`M?wt#B(t.gpI> NRYCp(uO;SV' );
define( 'NONCE_KEY',        'M<3kc`tO!n1XDMowPK5>}3yt~f.=~(=<lL|4%nel)#INZ|Cpb%0.ik`,=u2VTpQA' );
define( 'AUTH_SALT',        '<N|U[/)`=A[~=hA,A7b*[8efhKw:P!z]V@_qVX>vg9qsWX)C.n~n@1sE5dh%cdeQ' );
define( 'SECURE_AUTH_SALT', '[HsY!-#G {t~N@Bt/W^G9z>8pF~3 !|a=<C({TPiE^hcmo1;F_w}q;huQ0pZ[`}i' );
define( 'LOGGED_IN_SALT',   '74M&q<,#ER`.nAOP%yO/!1pDSv~VylJ5{x^kup~&mOx_W>EhF-fX{|0 Ln4nGvT3' );
define( 'NONCE_SALT',       'k&r;R|VxMjC]nuV!<b&*;+dV Wv1xb`VnW!4;k:h{#0Pa%&rAQY)QkmGVK0[=K#i' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_admin';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

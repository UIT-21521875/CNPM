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
define( 'DB_NAME', 'Website' );

/** Database username */
define( 'DB_USER', 'root' );

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
define( 'AUTH_KEY',         't0qtyn`g;`L?HbtjupG($_@5<YMH!|]y[cJ:I`:|yMblc.!Y~+pq4HTk]_ ~HtPU' );
define( 'SECURE_AUTH_KEY',  '9E(e28S1Di3QT]T!7K*Grm~t7,L$jJ*08<WH0m]`@64|Q5Ij]{)`h))<<{/CUEZB' );
define( 'LOGGED_IN_KEY',    'A1P&1]7De!~H{IK8Bd:K]#Qj QJLGB Q|Ea=<XWIR(SL1:WqO~$.%`=kM`W)UeJG' );
define( 'NONCE_KEY',        '}h*xTTFWW[lWXw+Mn|uqdY[fC$hw#O@$9Z=+2U@Ib%W/pIQLp}l-zU^S/3p(S/?;' );
define( 'AUTH_SALT',        'M.`4h#ZEFX5Te]AEiiOqr(Fc342uq{U2b_4VZ){s@4+>7wilrk6.n}Z;wmjg-?@V' );
define( 'SECURE_AUTH_SALT', 'G$njmf%)(z^W*jVG(H1MUzf#-.-=>MdOm 4??))4!}Gb!6G)%)pQOz*f.(3d%nbj' );
define( 'LOGGED_IN_SALT',   '<gN41T{Uz#ot{%sd:p9Q5Fd|<k/`>KR(:<39^!%nEtL.ByE^EGtwFQ9WMPwQfS {' );
define( 'NONCE_SALT',       'N]N]Y%/LguoqaJ*s,p<Yo,-1.b{,XlR+(?!VKna>>_/f=%AX>wH6R>lVZlICLuM&' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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

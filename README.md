# Guided Walks New Zealand 2023

## Installation

### Set up local environment

Prepare your Silverstripe environment file.

```
$ cp .env.dist .env
```

Open up your `.env` file, and update your IP, hostname, VM settings (if required).

```
SS_ENVIRONMENT_TYPE="dev"
SS_DEFAULT_ADMIN_USERNAME="admin"
SS_DEFAULT_ADMIN_PASSWORD="password"
SS_DATABASE_SERVER="localhost"
SS_DATABASE_USERNAME="root"
SS_DATABASE_PASSWORD="root"
SS_DATABASE_NAME="nationalkiwihatcheryorgnz2023"
SS_TRUSTED_PROXY_IPS='*'
```

You can update your `/etc/hosts` file manually.

```
$ sudo vi /etc/hosts

# Add line
192.168.33.4   myproject.test
```
### Build steps:

The following steps can be run from within your VM (if you ssh into it), or from your local machine (if you have the
appropriate libraries available).

Run composer
```
$ composer install
```

Build resources (javascript and css) using [compass](http://beta.compass-style.org/install/)
```
$ cd themes/nationalkiwihatcheryorgnz2023

# compile for production (minify resources)
$ compass compile -e production

# watch for resource changes
$ compass watch
```
Run a dev/build
```
# Without alias
$ vendor/bin/sake dev/build flush=1

# With alias (from composer.json)
$ composer dev-build


# With alias (from .vm_aliases)
$ dbf
```
Fix folder permissions
```
cd /var/www/vhosts/nationalkiwihatcheryorgnz2023/public_html
sudo chmod 2775 -R assets
sudo chmod 2775 -R .graphql-generated/
sudo chmod 2775 -R _graphql/
sudo chown apache -R .graphql-generated/
sudo chown apache -R _graphql/
cd /var/www/vhosts/nationalkiwihatcheryorgnz2023/public_html/assets 
sudo chmod 664 .htaccess 
sudo chown apache .htaccess 
sudo chmod 664 error-404.html 
sudo chmod 664 error-500.html 
sudo chown apache error-404.html 
sudo chown apache error-500.html 
cd /var/www/vhosts/nationalkiwihatcheryorgnz2023/public_html/assets/.protected 
sudo chmod 664 .htaccess 
sudo chown apache .htaccess
```

## Changing PHP versions

The latest box will set PHP 7.4 by default. You might find that you need to use a lower version for some projects.

There is a known issue open for `php-switch`:
https://github.com/silverstripeltd/dev-boxes/issues/165

The workaround:
```
$ sudo -i
$ a2dismod php*
$ a2enmod php7.4
$ service apache2 restart
```

## Available Build Tools

* `composer dev-build` alias for building database tables 
* `composer expose` alias for composer vendor-expose
* `composer refresh` alias that combines composer install, dev/build and expose

# stack debugging with puppet-- working with wordpress

exec { 'fix-typo':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}

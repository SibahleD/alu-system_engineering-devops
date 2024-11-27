# puppet that fixes error
exec { 'fix-server':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  path    => '/usr/bin:/bin',
}


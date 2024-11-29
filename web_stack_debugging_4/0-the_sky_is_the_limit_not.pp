# Puppet script that increases the ulimit
exec { 'increase-ulimit':
    command => '/bin/sed -i \'s/ULIMIT="-n 15"/ULIMIT="-n 4096"/\' /etc/default/nginx',
    path    => '/usr/local/bin/:/bin/',
}

exec { 'restart nginx':
    command => '/usr/sbin/service nginx restart',
    path    => '/etc/init.d/',
}

# Puppet script that increases the nginx limit

# Increase limit
exec { 'increase-ulimit':
    command => '/bin/sed -i \'s/ULIMIT="-n 15"/ULIMIT="-n 4096"/\' /etc/default/nginx',
}

exec { 'restart nginx':
    command => '/usr/sbin/service nginx restart',
}

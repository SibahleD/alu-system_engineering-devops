# puppet that increases the nginx limit

#increase limit
exec { 'increase-ulimit':
    command => '/bin/sed -i \'sULIMIT="-n 15"/ULIMIT="-n 4096"/\' /etc/default/nginx',
}

exec { 'restart nginx':
    command => 'usr/sbin/service nginx restart'
}

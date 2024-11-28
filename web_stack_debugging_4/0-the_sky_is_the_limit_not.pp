# increasing hard and soft limit for the server

#increase limit
exec { 'increase-hard-limit':
    command => 'sed -i "/holberton hard/s/5/50000" /etc/security/limits.conf',
    path    => '/bin/',
}

#increase soft limit
exec { 'increase-soft-limit':
    command => 'sed -i "/holberton soft/s/4/50000" /etc/security/limits.conf',
    path    => '/bin/',
}

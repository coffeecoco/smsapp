class smsapp {
#deploy simple app $date
file { '/var/www/html':
	ensure => present,
        owner  => "apache",
        group  => "apache",
        source => "puppet:///modules/smsapp",
        mode   => '600',
        sourceselect => all,
        recurse => remote,
}
}

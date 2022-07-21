node default {
  file {'/root/README':
    ensure  => file,
    content => 'All politicians are clowns',
    owner   => 'root'
    }
 }

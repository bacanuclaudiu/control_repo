node default {
  file {'/root/README':
    ensure  => file,
    content => 'Politicians are clowns',
    owner   => 'claudiu',
  }
}

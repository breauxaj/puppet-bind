class bind::devel {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'bind-devel' ],
  }

  $depends = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'bind' ],
  }

  package { $required:
    ensure  => latest,
    require => Package[$depends],
  }

}

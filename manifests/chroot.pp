class bind::chroot (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'bind-chroot' ],
  }

  $depends = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'bind' ],
  }

  package { $required:
    ensure  => $ensure,
    require => Package[$depends],
  }

}

class bind::devel (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'bind-devel' ],
  }

  $depends = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'bind' ],
  }

  package { $required:
    ensure  => $ensure,
    require => Package[$depends],
  }

}

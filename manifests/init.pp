class bind (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'bind'
  }
  
  package { $required: ensure  => $ensure }
  
}

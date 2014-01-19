class bind {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'bind'
  }
  
  package { $required: ensure  => latest }
  
}

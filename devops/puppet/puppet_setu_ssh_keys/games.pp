class sshclass1{
  ssh_authorized_key { 'root@jump_host':
    user => 'tony',
    type => 'ssh-rsa',
    key =>      
  } 

}

class sshclass2{
  ssh_authorized_key { 'root@jump_host':
    user => 'steve',
    type => 'ssh-rsa',
    key =>      
  } 

}

class sshclass3{
  ssh_authorized_key { 'root@jump_host':
    user => 'banner',
    type => 'ssh-rsa',
    key =>      
  } 

}

node 'stapp01.stratos.xfusioncorp.com'{
    include sshclass1
}


node 'stapp02.stratos.xfusioncorp.com'{
    include sshclass2
}

node 'stapp03.stratos.xfusioncorp.com'{
    include sshclass3
}



node 'default' {}

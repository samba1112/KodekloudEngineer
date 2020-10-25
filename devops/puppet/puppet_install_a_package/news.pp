class paquete{
  package {"nginx":
    ensure=> "installed"
  }

}

node 'stapp01.stratos.xfusioncorp.com'{
    include paquete
}

node 'stapp02.stratos.xfusioncorp.com'{
    include paquete
}

node 'stapp03.stratos.xfusioncorp.com'{
    include paquete
}

node 'default' {}

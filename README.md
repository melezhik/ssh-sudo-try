# SYNOPSIS

Connects to remote server by ssh and determines if user has sudo access for some command

# INSTALL

sparrow plg install ssh-sudo-try


# USAGE


    $ sparrow project create cluster
    $ sparrow check add cluster check-sudo-bash
    $ sparrow check set cluster check-sudo-bash ssh-sudo-try
    $ sparrow check ini cluster check-sudo-bash 

    [ssh-sudo-try]
    servers = 127.0.0.1 foo.bar.baz 192.168.0.0.1
  
    ssh_command = ssh -l foo -i ~/my_key.pem 

    sudo_command = sudo /bin/bash -c 'echo'

    $ sparrow check run cluster check-sudo-bash
 
# AUTHOR

[Alexey Melezhik](mailto:melezhik@gmail.com)

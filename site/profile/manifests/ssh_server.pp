class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service {'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user => 'root',
                type => 'ssh-rsa',
                key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDkCUuXX9Qssmbo+w4vDKiaCCiSxk3a+Mwg0d+xh+PhnIaBIGwx4+WGcCkw4tpfC77M2LHhJD32KVft7ZFDrF1pQI/UdCdRYPZ0vWvBgYbhlmH2oyNHomEK8yZ8LlXXaYhcw+a5crksiGfNIjxYa6eR3aTlbwZ/ZxW0j7KNJ09kWgzEr7wsVGcY9JdBrJsJYVkO4mhmFd/soz/cJTCl8ojA5NU5l2RqKZf5c4tGp6PlUTGNndVaKj9GYRmqVm0TezaJ6T01FkovYAP4v7CgllNYQSwi5nKM328yWqJXvV0ZGjkGdEk/PIQycUX5A/N6VxgKdlhhbdlBVbZvevl15IXD',
       }
 }    

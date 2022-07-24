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
                key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDbHQLuqUdeCnQWM+oVgUn9rq50ufDeEVH5U5gcA3HwDsaJeT2FVTn1EmSg9DpkylXj8sgdGJhs2d/TRyUQkVF05LBP2RBb8yn15g2e69lxuH0BE2mlwIIezzgO4C/mcQgKLoivi4afiMcK55yI1kQJVSf+4wwlAxAirjyqx3D3HRCtuBGoxsqrKeE74mKgLIQR22ocj5o2ChnurxW/zpm8435Tz29yQCGINPCh+71A8XPhf+/L6djwrYb1vdhc6AfSWi++KmUWTuoKhY7VLhQyoK4YtS3vFQfzQoA4cmhsNojQ8G/jI7RHHkkqqsSMuRUvn4D4Z+Uts/JQok+/wMsx',
       }
 }    

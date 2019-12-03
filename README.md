# OpenLiteSpeed

- creates a new virtualbox with masterless saltstack  
- install OpenLiteSpeed

## First install of the VirtualBox with Vagrat ##
```
vagrant up
```

## After installation call "localhost:8088" from your host browser.
* done and ready for work

In the VirtualBox, you can find important folders mounted from the host:
* /etc/salt
* /srv/salt/
* /var/www/

OpenLiteSpeed WebGui is forwared to the host!
* config.vm.network :forwarded_port, guest: 7080, host: 7080
* config.vm.network :forwarded_port, guest: 8088, host: 8088

## Features ##

* Java 8
* OpenLiteSpeed


## Debugging

If you want to see a full list of what Salt is doing you can add the following line to the VagrantFile

```
salt.verbose = true
```

Or use flag below when running vagrant command

```
--debug
```

## Using Salt from the Box 
```
vagrant ssh
```

Box update and pre-configure with:
```
salt-call state.highstate
```




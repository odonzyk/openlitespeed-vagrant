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


## more Documentation about installation and usage ##
* https://openlitespeed.org/kb/install-ols-from-litespeed-repositories/

* The default installation directory is /usr/local/lsws.

* For detailed information on controlling the server processes, please see the administration guide.

* To start the server, simply run /usr/local/lsws/bin/lswsctrl start. (To stop it, run /usr/local/lsws/bin/lswsctrl stop.)

* A sample site should be running on the server.

* To access your site, point your browser to http://[address]:8088/, [address] being the IP address or domain name of your web server machine. Use “localhost” if the server is on the machine you are using. By default, OpenLiteSpeed runs on port “8088”.
* A congratulations page linked to other testing pages should load into the browser when pointed to the above address. If not, try testing the WebAdmin interface.

* The default port for the WebAdmin console is 7080.
 Plug https://[address]:7080/, into your browser to go to the WebAdmin interface.
 Remember the “https://” and that for [address] you can use “localhost” if you’re currently using the machine the server is on.
* A login page should load. The defaults for the administrator’s user name and password are “admin” and “123456”.
 For detailed information regarding configuration, please refer to our Configuration Guide, or click the “Help” link at the top of each page.

* If your server uses a firewall, please make sure that localhost is trusted.
  For instance, Linux with IPTables should include a rule ALLOW INPUT from LO.
  If your website and the WebAdmin console are inaccessible, please take a look at the error log /usr/local/lsws/logs/error.log.

* If there is a TCP port conflict with other server applications, you will need to stop the application currently running on port 7080. The following command can be used to check port 7080: netstat -an | grep 7080. If the port is available, the command will produce no output.
* If the swapping directory is not writable, you can either grant writing permission for the swapping directory to the user whom the web server is running as, or change the swapping directory’s configurations manually. The swapping directory is configured in the server’s XML configuration file: /usr/local/lsws/conf/httpd_config.xml. Search the XML file for “swappingDir”. The default location for the swapping directory is /tmp/lshttpd/swap.


openlitespeed_rep:
  cmd.run:
    - runas: root
    - bgFalse: True
    - name: wget -O - http://rpms.litespeedtech.com/debian/enable_lst_debian_repo.sh | bash

openlitespeed:
  pkg.installed




base_updated:
  pkg.uptodate:
    - refresh: True

base_packages:
  pkg.installed:
    - refresh: True
    - pkgs:
      - python-devel
      - python-numpy-devel
      - python-pip
      - libxml2-devel
      - libxslt-devel
      - libffi-devel-gcc5
      - gcc-c++

#base_pip:
#  pip.installed:
#    - upgrade:
#      - True
#    - require:
#      - base_packages
#    - pkgs:
#      - sqlalchemy
#      - numpy
#      - pandas
#      - bcrypt
#      - lxml
#      - suds 
#      - cherrypy
#      - python-dateutil
#      - requests
#      - spyne >= 2.12
#      - zope.sqlalchemy >= 0.4

#mysql_pip:
#  pip.installed:
#    - require:
#      - base_packages
#    - name: mysql-connector-python
#    - find_links:
#      - https://cdn.mysql.com/Downloads/Connector-Python/mysql-connector-python-2.1.5.zip

#git_hydra_nwbt:
#  pkg.installed:
#    - name: git
#  git.latest:
#    - name: https://github.com/nwbt/HydraPlatform
#    - rev: master
#    - target: /opt/hydra
#    - user: vagrant
#    - require: 
#      - pkg: git
#      - file: /opt/hydra
#
#/opt/hydra:
#  file.directory:
#    - user: vagrant
#    - group: users
#    - dir_mode: '0755'
#    - force: True

install_hydra:
  cmd.run:
    - name: sudo python setup.py develop
    - cwd: /opt/HydraPlatform/HydraServer
    - runas: vagrant
    - timeout: 600
    - require: 
      - base_packages
      - hydra_platform_dev_simlink # development only
      #- pkg: git_hydra_nwbt # production only

mode_hydra_runserver:
  file.managed:
    - name: /opt/HydraPlatform/HydraServer/run_server.sh
    - user: vagrant
    - group: users
    - mode: '0744'
    - require:
      - install_hydra

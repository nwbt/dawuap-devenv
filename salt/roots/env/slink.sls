hydra_platform_slink:
  file.symlink:
    - name: /home/vagrant/HydraPlatform
    - target: /opt/HydraPlatform 

hydra_shapefile_plugin_slink:
  file.symlink:
    - name: /home/vagrant/HydraShapefileApp
    - target: /opt/HydraShapefileApp


# for development purposes only
hydra_shapefile_plugin_dev_simlink:
  file.symlink:
    - name: /opt/HydraShapefileApp
    - target: /vagrant/HydraShapefileApp


# for development purposes only
hydra_platform_dev_simlink:
  file.symlink:
    - name: /opt/HydraPlatform 
    - target: /vagrant/HydraPlatform

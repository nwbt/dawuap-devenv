gdal_updated:
  pkg.uptodate:
    - refresh: True

gdal_packages:
  pkg.installed:
    - refresh: True
    - require: 
      - base_packages
    - pkgs:
      - gdal
      - gdal-devel

gdal_pip:
  pip.installed:
      - name: GDAL
      - require: 
        - gdal_packages
      - install_options:
        - "build_ext"
        - "-I/usr/include/gdal"

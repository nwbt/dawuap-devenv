base:
  '*':
    - env.bash
    - env.slink
    - packages.base
    - packages.gdal
    - packages.hydra
  #  'os_family:Suse':
  #    - match: grain
  #    - pkg-nwbt.Suse
  #  '*':
  #    - hydra-nwbt

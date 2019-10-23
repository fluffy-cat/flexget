# Flexget for ARM
This is a Flexget docker image for Raspberry Pi.

## Parameters
`-v <path/to/flexget/config>:/config`
The path where you wish to put all config files. All config files should go into `<path/to/flexget/config>/flows-conf`. Yaml config files in this directory will be merged into a single config file. The merged config file is then fed into Flexget.

`-e TZ=<your local time zone>`
Set this environment variable to configure your time zone
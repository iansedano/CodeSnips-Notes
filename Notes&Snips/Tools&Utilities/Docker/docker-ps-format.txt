$ docker ps --format 'table {{.Names}}\t{{.Image}}'

By default, Docker looks for a config file in ~/.docker/config.json. It stores some settings here, like auth credentials

If you've typed docker login before you should have this config file there and populated with a json hash, we can just add the docker ps format configuration as a top-level item in the hash... here's the configuration that I use:

{
  "psFormat": "table {{.Names}}\\t{{.Image}}\\t{{.RunningFor}} ago\\t{{.Status}}\\t{{.Command}}"
}


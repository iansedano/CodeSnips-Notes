```bash
MARP_CLI := docker run --rm --init -v "$(PWD):/home/marp/app/" -e LANG=$(LANG) -e MARP_USER="$(id -u):$(id -g)" -p 37717:37717 realpython/rp-slides --theme theme/rp-theme.css --allow-local-files --config-file=marp.config.js
```

To open docker interactively to regen faster (because watch doesn't work):

```
docker run --rm --entrypoint /bin/sh -it -v "$(PWD):/home/marp/app/" -p 37717:37717 realpython/rp-slides

node /home/marp/.cli/marp-cli.js --theme theme/rp-theme.css --allow-local-files --config-file=marp.config.js --html slides.md
```
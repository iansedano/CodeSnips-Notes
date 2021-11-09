#Jekyll

https://brainwipe.github.io/jekyll/hyde/ubuntu/2017/05/16/pulling-jekyll-teeth/
https://scottdorman.blog/2019/02/27/running-jekyll-on-wsl/

**Make sure ruby is installed with rbenv**

see "installing ruby on fresh ubuntu WSL.md"

create jekyll folder (so you can set local ruby version)

ruby local 2.6.6 (or your version)

`gem install bundler`
`gem install pessimize`  for managing gemfiles

`bundle init`

This will create Gemfile

`gem install jekyll` or do it with the gemfile.

`pessimize`

then create jekyll or use template jekyll sites as per website...


20200521 

Auto regen only works when the site lives within the wsl, not on mnt drives.





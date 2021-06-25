##Installing Jekyll on WSL Ubuntu Notes

Ruby version 2.5.0 or above, including all development headers (ruby version can be checked by running `ruby -v`)
RubyGems (which you can check by running `gem -v`)
GCC and Make (in case your system doesn’t have them installed, which you can check by running `gcc -v`,`g++ -v` and `make -v` in your system’s command line interface)

`sudo apt-get install ruby-full build-essential zlib1g-dev`

It is best to avoid installing Ruby Gems as the root user. Therefore, we need to set up a gem installation directory for your user account. The following commands will add environment variables to your ~/.bashrc file to configure the gem installation path. Run them now:
```
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```
Finally, install Jekyll:

`gem install jekyll bundler`

--

####quick start

```
jekyll new my-site
cd my-site
bundle exec jekyll serve
```

now site should be on http://localhost:4000


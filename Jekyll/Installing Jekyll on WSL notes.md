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

####quickstart

```
jekyll new my-site
cd my-site
bundle exec jekyll serve
```

now site should be on http://localhost:4000


#### above didnt work...
https://stackoverflow.com/questions/8146249/jekyll-command-not-found


The easiest method of doing this is to use RVM. It manages Ruby and all its gems for you and it's easy to use. See this [link][1] for using it.

If you did not want to use that you will need to modify your PATH variables so it can find your gems. I have found this to be tedious and reverted to RVM, but here are the general steps.

You will need to find out where your gems are getting installed. If you did `gem install ...` the gems will be in `~/.gem/ruby/1.8/gems/bin`, if you used `sudo gem install ...` the gems will be somewhere in `/System/Library/Frameworks/Ruby.framework/Versions/1.8/Resources`

You have to add this path to your PATH variable. Easiest way to do this is by running :
`echo 'PATH=$PATH:above/path/to/gems' >> ~/.bash_profile`

  [1]: http://pragmaticstudio.com/blog/2010/9/23/install-rails-ruby-mac


#### above didnt work either 
Maybe a little late, but... I had some trouble to install Jekyll on Ubuntu and tried everything that people answered in this thread - unfortunately nothing worked.
Then, I watched a video on Jekyll's site and after installing the whole ruby package again, sudo gem install jekyll worked.

Try it before anything else:

sudo apt-get update

sudo apt-get install ruby-full

sudo gem install jekyll

jekyll -v
It seems pretty simple, but it works on Ubuntu.

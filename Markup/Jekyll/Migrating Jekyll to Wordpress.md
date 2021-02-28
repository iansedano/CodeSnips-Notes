###Migrating Jekyll to Wordpress

https://reyhan.org/2018/02/928

How to migrate from Jekyll to WordPress
Last month the decision was made to consolidate years of newsletters, weblog posts and other minutiae from various Jekyll instances to one WordPress-powered deal.

A fair amount of time was spent researching the best, quickest (and easiest!) way to do this but, unsurprisingly, most searches turned up the opposite: migrating from WordPress to Jekyll — anyway — here’s now it’s done:

####Jekyll instance

Install the Jekyll Feed plugin.  
Do a jekyll build and ensure the generated feed.xml has all the posts that are intended to be migrated.

####WordPress instance

1. Download and install the WP All Import plugin: wp plugin install wp-all-import --activate.
2. In WordPress Admin, click on the All Import link and upload the feed.xml file generated earlier.
3. Follow the four-step process to map and import the feed.xml data file into the WordPress instance.

I’d have saved a bunch of time had I been pointed at the WP All Import plugin from the beginning, so hopefully this will help somebody in the future.


other sources  
https://davidlynch.org/blog/2016/01/migrating-from-jekyll-to-wordpress/  
https://ianrenton.com/blog/migrating-from-jekyll-to-wordpress/  
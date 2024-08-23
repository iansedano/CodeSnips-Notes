# zgrep extended regex suppress filename case insensitive
zgrep -Ehi "session (opened|closed)" /var/log/auth.log* | grep -v "CRON"

zcat fail2ban.log*

Found that fail2ban had shutdown on 15th of Jan...
import os
import tweepy
import secret
import json
import sys
from io import TextIOWrapper


sys.stdout = TextIOWrapper(
    sys.stdout.buffer, encoding='utf-8', errors='replace')

CONSUMER_KEY = secret.CONSUMER_KEY
CONSUMER_SECRET = secret.CONSUMER_SECRET
ACCESS_TOKEN = secret.ACCESS_TOKEN
ACCESS_SECRET = secret.ACCESS_SECRET

auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
auth.set_access_token(ACCESS_TOKEN, ACCESS_SECRET)

api = tweepy.API(auth)

'''
handle = 'elonmusk'
user = api.get_user(handle)
num_friends = user.friends_count

print(num_friends)

#home timeline
for status in tweepy.Cursor(api.home_timeline).items(10):
    # Process a single status
    print(status.text)

'''

tweets = tweepy.Cursor(api.search,
	q="python",
	lang="en",
	since=2018-11-16).items(100)

mylist =[]
for t in tweets:
	mylist.append(t._json)


with open('result.json','w') as fp:
	json.dump(mylist, fp)
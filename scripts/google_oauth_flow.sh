#!/bin/bash

# sample usage:
# . google_oauth_flow.sh xxx.apps.googleusercontent.com xxxx https://www.googleapis.com/auth/drive
# Where the first arg is the client id, the second is the client secret, and the third is the scope


CLIENT_ID=$1
CLIENT_SECRET=$2
SCOPE=$3
REDIRECT_URI="urn:ietf:wg:oauth:2.0:oob"

AUTH_CODE_URL="https://accounts.google.com/o/oauth2/v2/auth?"`
          `"client_id=${CLIENT_ID}&scope=${SCOPE}&response_type=code&"`
          `"redirect_uri=${REDIRECT_URI}"

echo "get your auth code from: 

${AUTH_CODE_URL}

"
 
read -p "Enter the authorization code:" AUTH_CODE


CURL_DATA="client_id=${CLIENT_ID}&"`
  `"client_secret=${CLIENT_SECRET}&"`
  `"code=${AUTH_CODE}&"`
  `"redirect_uri=${REDIRECT_URI}&"`
  `"grant_type=authorization_code"

printf "\n"
echo $CURL_DATA

curl --request POST --data $CURL_DATA https://oauth2.googleapis.com/token
printf "\n"

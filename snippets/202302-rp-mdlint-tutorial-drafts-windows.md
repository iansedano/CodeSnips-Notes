```sh
docker run -d -it -v C:\Dev\rp\tutorial-drafts:/tutorial-drafts -w /tutorial-drafts --name mdlint circleci/node

docker exec mdlint npm install

docker exec mdlint npm run lint

docker run -d -it -v C:\Dev\rp\tutorial-drafts:/tutorial-drafts -w /tutorial-drafts --name rubymdl circleci/ruby

docker exec rubymdl gem install mdl -v 0.9.0

docker exec rubymdl mdl -g -d -u mdl_rules/RPRules.rb .
```

Note the combination of Windows and Linux slashes

Possible `Dockerfile`

```dockerfile
FROM circleci/ruby
WORKDIR /tutorial-drafts
RUN gem install mdl -v 0.9.0
ENTRYPOINT mdl -g -d -u mdl_rules/RPRules.rb .
```
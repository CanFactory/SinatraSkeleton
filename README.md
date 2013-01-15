Sinatra Skeleton
=======

Contains AssetPack (supports CSS / SASS / SCSS / JS / CoffeeScript / Compass) and Mustache templates.
Provides a few generic templates to help kick things off.

Setup
=====

1) Download jRuby 1.7 -- http://jruby.org/ (optional)

2) Install Bundler Gem - `gem install bundler`

3) Clone the GitHub Repo

4) In the project folder install dependencies - `bundle install`

5) Run the project with Ruby, jRuby or Rackup:

Ruby:
`bundle exec ruby ./app.rb`

jRuby:
`bundle exec jruby ./app.rb`

Shotgun Rack Reloader:
`bundle exec shotgun -p 4567 ./config.ru`

Rackup:
`bundle exec rackup -p 4567 ./config.ru`


Something similar to the following should be visible:
```
[2013-01-15 12:50:38] INFO  WEBrick 1.3.1
[2013-01-15 12:50:38] INFO  ruby 1.9.3 (2013-01-04) [java]
== Sinatra/1.3.3 has taken the stage on 4567 for development with backup from WEBrick
[2013-01-15 12:50:38] INFO  WEBrick::HTTPServer#start: pid=71637 port=4567
```

6) Open your browser to: http://0.0.0.0:4567
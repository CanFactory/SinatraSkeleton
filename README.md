UVMPoc1
=======

UVM Proof of Concept - Frontend


Setup
=====

1) Download jRuby 1.7 -- http://jruby.org/ (optional)

2) Install GitFlow ( we recommend Homebrew installation ) - https://github.com/nvie/gitflow

3) Install Bundler Gem - `gem install bundler`

4) Clone the GitHub Repo

5) In the project folder install dependencies - `bundle install`

6) Run the project - `bundle exec jruby ./app.rb`

The following should be printed:

```
[2013-01-15 12:50:38] INFO  WEBrick 1.3.1
[2013-01-15 12:50:38] INFO  ruby 1.9.3 (2013-01-04) [java]
== Sinatra/1.3.3 has taken the stage on 4567 for development with backup from WEBrick
[2013-01-15 12:50:38] INFO  WEBrick::HTTPServer#start: pid=71637 port=4567
```

7) Open your browser to: http://0.0.0.0:4567
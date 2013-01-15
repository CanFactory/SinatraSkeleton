Encoding.default_external = 'utf-8'
require 'sinatra/base'
require 'sinatra/assetpack'
require 'compass'
require 'sinatra/support'
require 'mustache/sinatra'

class Uvm < Sinatra::Base
  base = File.dirname(__FILE__)
  set :root, base
  register Sinatra::AssetPack
  register Sinatra::CompassSupport
  register Mustache::Sinatra

  assets do
    serve '/js',     from: '/app/js'
    serve '/css',    from: '/app/css'
    serve '/images', from: '/app/images'

    js :uvm_js, [ '/js/*.js' ]
    css :uvm_css, [ '/css/*.css' ]

    js_compression  :jsmin
    css_compression :sass
  end

  require "#{base}/app/helpers"
  require "#{base}/app/views/layout"
  set :mustache, {
    :templates => "#{base}/app/templates", # Should be the path to your .mustache template files.
    :views => "#{base}/app/views", # Should be the path to your .rb Mustache view files.
    :namespace => Uvm
  }

  before do
    @css = css :uvm_css
    @js  = js  :uvm_js
  end




  get "/" do
    @title = "Homepage"
    @subtitle = "UVM POC One"
    mustache :index
  end

  get '/nolayout' do
    @subtitle = 'Title'
    content_type 'text/plain'
    mustache :nolayout, :layout => false
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
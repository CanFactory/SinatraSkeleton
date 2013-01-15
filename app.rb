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
    @title = "Index"
    mustache :index
  end


  get "/programs/index" do
    @title = "Programs#Index"
    mustache :program_index
  end

  get "/programs/show" do
    @title = "Programs#Show"
    mustache :program_show
  end

  get "/programs/new" do
    @title = "Programs#New"
    mustache :program_new
  end

  get "/programs/edit" do
    @title = "Programs#Edit"
    mustache :program_edit
  end








  # start the server if ruby file executed directly
  run! if app_file == $0
end
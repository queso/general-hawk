require 'sinatra/base'
require 'erb'

module General
  module Hawk
    class Server < Sinatra::Base
      
      dir = File.dirname(File.expand_path(__FILE__))
      
      set :views,  "#{dir}/general-hawk/views"
      set :public, "#{dir}/general-hawk/public"
      
      get "/" do
        erb(:projects, {}, :projects => options.projects)
      end
      
      helpers do
        include Rack::Utils
        alias_method :h, :escape_html

        def pretty_time(time)
          time.strftime("%Y-%m-%d %H:%M")
        end

        def hawk_root
          root = request.path
          root = "" if root == "/"
          root
        end
      end
      
      def self.rack_start(projects)
        set :projects, projects
        self.new
      end
      
    end
  end
end

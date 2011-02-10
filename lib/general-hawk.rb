require 'sinatra/base'
require 'erb'

module General
  module Hawk
    class Server < Sinatra::Base
      
      dir = File.dirname(File.expand_path(__FILE__))
      
      set :views,  "#{dir}/views"
      set :public, "#{dir}/public"
      
      get "/" do
        erb(:projects, {}, :projects => options.projects)
      end
      
      
      def self.rack_start(projects)
        set :projects, projects
        self.new
      end
      
    end
  end
end

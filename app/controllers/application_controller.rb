require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    "hello"
    @team_name = params[:team][:name]
    "Here's name: #{@team_name}"
    @team_motto = params[:team][:motto]
    @team_members = params[:team][:members]
    "Here are members:#{@team_members}"
    @hero_names = []
    @hero_powers = []
    @hero_bios = []
    @team_members.each do |hero|
    # "#{hero}"
    # "#{attrib}"
      @hero_names << hero[:name]
    # "#{@hero_names}"
      @hero_powers << hero[:power]
    # "#{hero_powers}"
      @hero_bios << hero[:bio]
    # puts "#{hero_bios}"
    end
    erb :team
  end


end

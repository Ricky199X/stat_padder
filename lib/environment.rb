require "bundler/setup"
Bundler.require(:default)
require 'open-uri'


require_relative "./stat_padder/version"
require_relative "./command_line_interface"
require_relative "./homepage_scraper"
require_relative "./category" 
require_relative "./player"
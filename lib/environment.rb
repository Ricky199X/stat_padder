require_relative "./stat_padder/version"

require 'nokogiri'
require 'open-uri'
require 'pry'

module StatPadder
  class Error < StandardError; end
  # Your code goes here...

  # this is an example note to see if committing is working
end

require_relative "./command_line_interface"
require_relative "./homepage_scraper"
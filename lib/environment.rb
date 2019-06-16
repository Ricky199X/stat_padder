require "bundler/setup"
Bundler.require(:default)
require 'open-uri'

require_relative "./stat_padder/version"
require_relative "./CLI"
require_relative "./homepage_scraper"
require_relative "./player"
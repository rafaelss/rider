$:.unshift File.dirname(__FILE__)

require 'rubygems'
require 'logger'
require 'mechanize'
require 'timeout'
require 'yaml'

require 'rider/queue'
require 'rider/part_queue'
require 'rider/crawler'

$KCODE = 'u'

module Rider
  VERSION = '0.1'
  LOGGER = Logger.new(STDOUT)
  LOGGER.level = Logger::DEBUG
  
  
  def log
    LOGGER
  end
  module_function :log

  def to_absolute(uri, link)
    link = URI.encode(link.to_s.gsub(/#[a-zA-Z0-9_-]*$/,''))
    return nil if link.nil? or link.empty?

    relative = URI(link)
    absolute = uri.merge(relative)

    absolute.path = '/' if absolute.path.nil? or absolute.path.empty?
    return absolute
  end
end
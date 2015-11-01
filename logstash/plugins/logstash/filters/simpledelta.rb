# encoding: utf-8
require "logstash/filters/base"
require "logstash/namespace"
#require "logstash/environment"

class LogStash::Filters::SimpleDelta < LogStash::Filters::Base

  config_name "simpledelta"
  milestone 1

  config :input_field, :validate => :string
  config :filterkey_field, :validate => :string
  config :output_field, :validate => :string

  public
  def initialize(config = {})
    super

    # this filter needs to keep state based on a key field
    @lastEvents = Hash.new
  end # def initialize

  public
  def register
 
  end # def register

  public
  def filter(event)

     if !@lastEvents[@filterkey_field].nil? 
       event[@output_field] = 
        (event[@input_field].to_f) - (@lastEvents[@filterkey_field][@input_field]).to_f       
     end

     # remember event for next time
     @lastEvents[@filterkey_field] = event
       
  end # def filter

end # class LogStash::Filters::SimpleDelta
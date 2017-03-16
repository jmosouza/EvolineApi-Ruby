require 'net/http'

require_relative 'evoline/utils'
require_relative 'evoline/sms'
require_relative 'evoline/tts'
require_relative 'evoline/api_request'

module Evoline
  ENDPOINT = 'https://api.evoline.com.br'

  class AuthenticationException < StandardError
  end

  class << self
    attr_accessor :api_token
  end

  private

  def self.build_uri(path)
    URI.parse("#{ENDPOINT}/#{path}")
  end
end

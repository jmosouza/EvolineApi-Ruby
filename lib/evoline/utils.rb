module Evoline
  class Utils
    def self.auth_from_env
      api_token = ENV['EVOLINE_API_TOKEN']
      Evoline.api_token = api_token if api_token
    end
  end
end

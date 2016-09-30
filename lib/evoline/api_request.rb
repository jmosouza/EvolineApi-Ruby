module Evoline
  class APIRequest
    HTTP_VERB_MAP = {
      :get    => Net::HTTP::Get,
      :post   => Net::HTTP::Post,
      :put    => Net::HTTP::Put,
      :delete => Net::HTTP::Delete
    }

    def self.request(method, path, params = {})
      Evoline::Utils.auth_from_env if Evoline.api_token.nil?
      raise Evoline::AuthenticationException, 'Token da API não configurado. Utilize Evoline.api_token = ... para configurar.' if Evoline.api_token.nil?
      self.send_request(method, path, params)
    end

    private

    def self.send_request(method, path, params)
      uri = Evoline.build_uri(path)

      Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
        request = HTTP_VERB_MAP[method].new uri
        request['access-token'] = Evoline.api_token

        request.set_form_data(params) if params

        http.request(request)
      end
    end
  end
end

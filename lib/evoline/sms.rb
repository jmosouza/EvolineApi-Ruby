module Evoline
  class SMS
    PATH_MAP = {
      :send => 'sms',
      :get => 'sms/:id',
      :report => 'sms/relatorio'
    }

    def self.send(number, message, wait_answer = false)
      params = build_send_params(number, message, wait_answer)

      APIRequest.request(:post, PATH_MAP[:send], params)
    end

    def self.get(id)
      path = PATH_MAP[:get].sub(':id', id.to_s)

      APIRequest.request(:get, path)
    end

    def self.report
      APIRequest.request(:get, PATH_MAP[:report])
    end

    private

    def self.build_send_params(number, message, wait_answer = false)
      {
        numero_destino: number,
        mensagem: message,
        resposta_usuario: wait_answer
      }
    end
  end
end

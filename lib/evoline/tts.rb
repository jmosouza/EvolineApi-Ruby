module Evoline
  class TTS
    PATH_MAP = {
      :send => 'tts',
      :get => 'tts/:id',
      :report => 'tts/relatorio'
    }

    def self.send(number, message, wait_answer = false, speed = 0, caller_number = nil)
      params = build_send_params(number, message, wait_answer, speed, caller_number)

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

    def self.build_send_params(number, message, wait_answer = false, speed = 0, caller_number = nil)
      {
        numero_destino: number,
        mensagem: message,
        resposta_usuario: wait_answer,
        velocidade: speed,
        bina: caller_number
      }
    end
  end
end

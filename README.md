[![Gem Version](https://badge.fury.io/rb/evoline.svg)](https://badge.fury.io/rb/evoline)
[![Code Climate](https://codeclimate.com/github/akz92/EvolineApi-Ruby/badges/gpa.svg)](https://codeclimate.com/github/akz92/EvolineApi-Ruby)

# evoline

Gem pra acessar a API da Evoline.
Apenas os endpoints de SMS e TTS estão implementados.

Documentação: http://www.rubydoc.info/gems/evoline/0.0.1/index

# Configuração

Para configurar o token da API, use:

```
Evoline.api_token = "seu_token_aqui"
```

# Exemplos

## SMS

Envia uma mensagem de texto ao destinatário por SMS.

```
Evoline::SMS.send "4832830151", "Sua mensagem aqui"
```

## TTS

Realize uma ligação para o usuário por TTS.
A mensagem será convertida em voz por uma máquina.

```
Evoline::TTS.send "4832830151", "Sua mensagem aqui"
```

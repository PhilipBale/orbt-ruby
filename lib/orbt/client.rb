require 'orbt/identity_token'
require 'rest-client'

module Orbt
  class Client
    class << self
      def get(*args)
        request(:get, *args)
      end 

      def post(*args)
        request(:post, *args)
      end 

    private
      def request(method, endpoint, payload = {}, headers = {})
        url = "http://backend.orbt.io/#{endpoint}"

        debug = false
        if debug
          url = "http://localhost:3020/#{endpoint}"
        end

        headers = {
          'Content-Type' => 'application/json', 
          'AppId' =>  Orbt::IdentityToken.orbt_app_id,
          'CustomerToken' =>  Orbt::IdentityToken.customer_token,
        }.merge(headers)

        puts 'Headers: ' + headers.to_s

        payload = payload.to_json

        response = RestClient::Request.execute(method: method, url: url, payload: payload, headers: headers)
        response.empty? ? nil : JSON.parse(response)
      rescue => e
        puts 'Exception: ' + e.to_s
        puts 'Trace: ' + e.backtrace
      end  
    end 
  end
end
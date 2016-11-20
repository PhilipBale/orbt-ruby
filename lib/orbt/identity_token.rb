require 'digest/sha1'

module Orbt
  class IdentityToken
    class << self
      attr_writer :orbt_app_id,
                  :orbt_secret,

      def orbt_app_id
          @orbt_app_id || '57e30e9a835d3724b8094aa3'
      end

      def orbt_secret
          @orbt_secret || '00DjRhhRvPWxZO0agevfBHzgV4APdU9FHTfL4o9Y'
      end

    end

    attr_reader :user_id

    def initialize(user_id) 
      @user_id = user_id
      @token = Digest::SHA1.hexdigest(user_id + self.class.orbt_secret)
    end

    def self.customer_token
      return Digest::SHA1.hexdigest(Orbt::IdentityToken.orbt_app_id + Orbt::IdentityToken.orbt_secret)
    end

    def as_json(options = {})
      return @token
    end
  end
end
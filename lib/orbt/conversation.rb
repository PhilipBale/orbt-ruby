module Orbt
  class Conversation
    class << self
      def create(params)
        puts "Creating w/ params: #{params}"
        Orbt::Client.post()
      end
    end
  end
end
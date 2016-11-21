module Orbt
  class Message
    class << self
      def send(payload, senderUUID)
        Orbt::Client.post("messages", payload, {'UUID' => senderUUID})
      end
    end
  end
end
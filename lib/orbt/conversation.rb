module Orbt
  class Conversation
    class << self
      def create(payload, senderUUID)
        Orbt::Client.post("conversations", payload, {'UUID' => senderUUID})
      end

      def all
        Orbt::Client.get("conversations/all")
      end
    end
  end
end


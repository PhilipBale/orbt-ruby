module Orbt
  class Conversation
    class << self
      def create(payload)
        Orbt::Client.post("conversations", payload)
      end

      def all
        Orbt::Client.get("conversations/all")
      end
    end
  end
end
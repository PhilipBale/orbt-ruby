module Orbt
  class User
    class << self
      def update(payload, uuid)
        Orbt::Client.post('users/' + uuid + '/update', payload, {'UUID' => uuid})
      end
    end
  end
end
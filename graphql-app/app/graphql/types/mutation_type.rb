module Types
  class MutationType < Types::BaseObject

    field :create_user, UserType, null: false do
      description "User Type"
      argument :name, String, required: true
      argument :mail, String, required: true
      argument :address, String, required: false
    end

    def create_user(name:, mail:, address:)
        User.create name: name, mail: mail, address: address
    end
  end
end

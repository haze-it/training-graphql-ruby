module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :mail, String, null: false
    field :address, String, null: true
  end
end

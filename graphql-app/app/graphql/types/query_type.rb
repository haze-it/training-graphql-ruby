module Types
  class QueryType < Types::BaseObject
    field :user, UserType, null: false do
      description "User Type"
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end
  end
end

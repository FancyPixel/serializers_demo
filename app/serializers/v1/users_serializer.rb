module V1
  module UsersSerializer
    include V1::SimpleAwesomeStuffSerializer

    def serialize_user(user = @user)
      {
          id: user.id,
          name: user.name
      }
    end

    def serialize_users(users = @users)
      {
        users: users.map do |user|
          serialize_user(user).merge(serialize_awesome_stuffs(user.awesome_stuffs))
        end
      }
    end
  end
end

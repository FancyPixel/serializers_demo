module V1
  class UsersController < ApplicationController
    include V1::UsersSerializer

    def index
      @users = User.all.includes(:awesome_stuffs)
      render json: serialize_users
    end
  end
end

module V1
  class ComparisonController < ApplicationController
    include V1::SimpleAwesomeStuffSerializer

    before_action :load_awsomeness

    def jbuilder
      render 'v1/comparison/index'
    end

    def ams
      @pluto = 10
      render json: @awesome_stuffs, each_serializer: V1::AmsAwesomeStuffSerializer
    end

    def simple
      render json: serialize_awesome_stuffs
    end

    private

    def load_awsomeness
      @awesome_stuffs = AwesomeStuff.all
    end
  end
end

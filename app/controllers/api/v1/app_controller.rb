module Api
  module V1
    class AppController < ApplicationController

      def proxy
      	response = HTTParty.get("#{ENV['HOST']}/#{params[:path]}/#{params[:id]}")
      	render json: response
      end

    end
  end
end

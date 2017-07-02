require 'open-uri'

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    Indicator.where(status: 'new').each do |indicator|
      url = "http://40e0f9fb.ngrok.io/addIndicator" +
        "?type=like" +
        "&product=#{indicator.product}" +
        "&name=#{indicator.name}" +
        "&score=#{indicator.score}"

      factor = open(url).read.to_f

      if factor != 0
        factor = (factor * 100).to_i
        User.all.each do |user|
          if (indicator.product == 'Stambeni')
            Factor.create!(chance: user.chance, product: indicator.product, title: "Liked #{indicator.name}", amount: factor)
            user.chance.update!(kredit_stambeni: user.chance.kredit_stambeni + factor)
          end
        end
      end

      indicator.update!(status: 'old')
    end

    @chance = @user.chance
    @loans = @user.loans.order(purchase_date: :desc)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end

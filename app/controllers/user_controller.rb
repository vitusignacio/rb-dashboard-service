class UserController < ApplicationController
  def all
    render json: User.all
  end

  def one
    render json: User.find(params[:id])
  end

  def add
    user = User.new
    user.userId = rand(0...9999)
    user.name = params[:name]
    user.title = params[:title]
    user.age = params[:age].to_i
    user.save!

    render json: { status: 'ok' }
  end
end

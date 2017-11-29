class UserController < ApplicationController
  def all
    logger.info { 'broadcasting...' }
    redis = Redis.new(host: '127.0.0.1', port: 6379, db: 15)
    redis.publish('user-created', 'test')
    render json: User.all
  end

  def one
    render json: User.find(params[:id])
  end

  def add
    # user = User.new
    # user.userId = rand(0...9999)
    # user.name = params[:name]
    # user.title = params[:title]
    # user.age = params[:age].to_i
    # user.save!
    render json: { status: 'ok' }
  end
end

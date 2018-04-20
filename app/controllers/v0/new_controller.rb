class V0::NewController < ActionController::Base

  # get http://localhost:3000/v0/new.json
  def index
    @news = New.all
  end

  # get http://localhost:3000/v0/new/1.json
  def show
    @new = New.find(params[:id])
  end

  # post http://localhost:3000/v0/new
  def create
    user = User.find_by_username(params[:username])
    @new = user.new.new(title: params[:text], source: params['new source'])
    p params['new source']
    @new.save!
    render json: {message: 'ok'}, status: 200
  rescue => e
    render json: {message: 'bad'}, status: 400
  end
end

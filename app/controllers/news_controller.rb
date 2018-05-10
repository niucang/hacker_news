class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]
  skip_before_action :authencation, only: [:index]
  PAGE_NUMBER = 8

  # GET /news
  # GET /news.json
  def index
    @page = (params[:p] || 0).to_i
    @start = @page * PAGE_NUMBER
    @news = New.all.offset(@start).limit(PAGE_NUMBER).order(created_at: :desc)
    @has_more = (New.all.size - PAGE_NUMBER * (@page + 1)) > 0
  end

  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = current_user.new.new
  end

  # POST /news
  # POST /news.json
  def create
    @news = current_user.new.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to news_index_url, notice: 'New was successfully created.' }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_url, notice: 'New was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = New.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:new).permit(:title, :source)
    end
end

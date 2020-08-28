class SupplementsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @supplements = Supplement.all
  end

  def show
    @supplement = Supplement.find(params[:id])
  end

  def new
    @supplement = Supplement.new
  end

  def create
    @supplement = Supplement.new(supplement_params)
    @supplement.user_id = current_user.id
    if @supplement.save
      redirect_to supplement_path(@supplement), notice: '投稿しました' 
    else
      render :new
    end
  end

  def edit
    @supplement = Supplement.find(params[:id])
    if @supplement.user != current_user
      redirect_to supplements_path, alert: '不正なアクセスです'
    end
  end

  def update
    @supplement = Supplement.find(params[:id])
    if @supplement.update(supplement_params)
      redirect_to supplement_path(@supplement), notice: '更新しました'
    else
      render :edit
    end
  end

  private
  def  supplement_params
     params.require(:supplement).permit(:title, :body, :image)
  end
end

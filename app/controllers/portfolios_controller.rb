class PortfoliosController < ApplicationController
  before_action :edit_portfolio_path, only: [:edit, :update, :show, :destroy]
  layout 'portfolio'

  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_items = Portfolio.new
    3.times { @portfolio_items.technologies.build }
  end

  def create
    @portfolio_items = Portfolio.new(portfolios_params)

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_items = Portfolio.find(params[:id])
  end

  def update
    @portfolio_items = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_items.update(portfolios_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio Items were successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_items = Portfolio.find(params[:id])
  end

  def destroy
    #Look up item
    @portfolio_items = Portfolio.find(params[:id])
    #destroy/delete item
    @portfolio_items.destroy
    #redirect to new page
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Item was successfully deleted.' }
    end
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

private
  def portfolios_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end

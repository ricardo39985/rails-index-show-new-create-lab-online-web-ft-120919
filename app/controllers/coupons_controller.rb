class CouponsController < ApplicationController
  def index
    @all=Coupon.all
  end
  def new
    @coupon=Coupon.new
  end

  def create
    @coupon=Coupon.new(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    if @coupon.save
      redirect_to coupon_path(@coupon)
    else
      render :new
    end
  end
  def show
    @coupon=Coupon.find(params[:id]) 
  end
  
end
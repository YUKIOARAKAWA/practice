class InquiryController < ApplicationController

  def index
    @inquiry = Inquiry.new
  end

  def confirm
    @inquiry = Inquiry.new(create_params)
    if @inquiry.valid? == false
      render :action => "index"
    end
  end

  def create
    if params[:back]
      @inquiry = Inquiry.new(create_params)
      render :index
    else
      Inquiry.create(create_params)
      @inquiry = Inquiry.new(create_params)
      redirect_to action: :thanks
    end
  end

  def thanks
  end

  private
    def create_params
      params.require(:inquiry).permit(:name, :mail, :content)
    end

end

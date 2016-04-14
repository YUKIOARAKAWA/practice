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

  private
    def create_params
      params.require(:inquiry).permit(:name, :mail, :content)
    end

end

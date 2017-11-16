class StaticController < ApplicationController
  def carton
  end
  def company
  end
  def enterprise
  end
  def careers
  end
  
def contactus
    @static = Static.new
end
  def create
    @static = Static.new(contactus_params)
   if @static.save
     redirect_to home_path
     flash[:notice] = "Your form is successfully Submited"
   else
    redirect_to contactus_path
    flash[:notice] = "Your form is not submitted, plz provide the valid information."
   end
 end

 

private
  def contactus_params
    params.require(:static).permit(:name,:email, :phone, :enquiry, :description)
  end
end

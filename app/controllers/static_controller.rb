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
    flash[:notice] = "raja"
    redirect_to visitors_index_path
   else
    flash[:notice] = "error"
   end
 end

 

private
  def contactus_params
    params.require(:static).permit(:name,:email, :phone, :enquiry, :description)
  end
end

class StaticController < ApplicationController
  def carton
  end
  def company
  end
  def enterprise
  end

  def enterprise_form
  end

def enterprisecreate
        @enterpriseform = Enterprise.new(enterpriseform_params)
   if @enterpriseform.save
     redirect_to enterprise_path
     flash[:notice] = "Your form is successfully Submited"
   else
    redirect_to enterprise_path
    flash[:notice] = "Your form is not submitted, plz provide the valid information."
   end 
end

# def businesscreate
#         @businessform = Enterprise.new(enterpriseform_params)
#    if @businessform.save
#      redirect_to enterprise_path
#      flash[:notice] = "Your form is successfully Submited"
#    else
#     redirect_to enterprise_path
#     flash[:notice] = "Your form is not submitted, plz provide the valid information."
#    end 
# end

def careers
  @statics = Static.alls
end
  
def contactus
    @static = Static.new
end
def create
    @static = Static.new(contactus_params)
   if @static.save
     redirect_to contactus_path
     flash[:notice] = "Your form is successfully Submited"
   else
    redirect_to contactus_path
    flash[:notice] = "Your form is not submitted, plz provide the valid information."
   end
end

 

private
def enterpriseform_params
  params.require(:enterprise).permit(:name);
end
  def contactus_params
    params.require(:static).permit(:name, :email, :phone, :enquiry, :description, :organization)
  end
end

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

def businesscreate
        @businessform = Business.new(businessform_params)
   if @businessform.save
     redirect_to business_path
     flash[:notice] = "Your form is successfully Submited"
   else
    redirect_to business_path
    flash[:notice] = "Your form is not submitted, plz provide the valid information."
   end 
end

def careercreate
        @careerform = Career.new(careerform_params)
   if @careerform.save
     redirect_to careers_path
     flash[:notice] = "Your form is successfully Submited"
   else
    redirect_to careers_path
    flash[:notice] = "Your form is not submitted, plz provide the valid information."
   end 
end

def careers
  @jobs = Job.all
end
  
def contactus
end
def create
    @contactus = Static.new(contactus_params)
   if @contactus.save
     redirect_to contactus_path
     flash[:notice] = "Your form is successfully Submited"
   else
    redirect_to contactus_path
    flash[:notice] = "Your form is not submitted, plz provide the valid information."
   end
end

 

private
def enterpriseform_params
  params.require(:enterprise).permit(:organization, :firstname, :lastname, :totalemployee, :industry, :email, :phone, :countrycode);
end
def businessform_params
  params.require(:business).permit(:organization, :firstname, :lastname, :totalemployee, :industry, :email, :phone, :countrycode);
end
def careerform_params
  params.require(:career).permit(:firstname, :lastname, :email, :phone, :countrycode, :resume);
end
def contactus_params
    params.require(:static).permit(:name, :email, :phone, :enquiry, :description, :organization)
 end
end

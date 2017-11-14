class StaticController < ApplicationController
  def carton
  end
  def company
  end
  def enterprise
  end
 
  def contactus
   @contact = Contact.new
  end

def create
  @contact = Contact.new(contact_params)
   if @contact.save
    flash[:notice] = "Form is sucessfully submitted"
     ContactUsMailer.form(@page).deliver_later
    redirect_to visitors_index_path

   else
    flash[:notice] = "please fill a valid information"
    redirect_to  contactus_path
   end
end

# def destroy
#    @page = Page.find(params[:id])
#     if @page.destroy
#        flash[:notice] = "deleted success"
#        redirect_to pages_path
#     else
#        flash[:notice] = "Error"
#     end
# end


private
def contact_params
    params.require(:contactus).permit(:name, :email, :phone, :enquiry, :description)
end
end

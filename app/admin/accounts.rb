ActiveAdmin.register Account do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :balance, :state, :account_number, :first_name, :last_name, :phone_number, :ssn, :address, :dob, :routine_number, :user_id, :date_of_birth, :slug, :city, :zip_code, :country, :account_type, :account_pin, :verify_pin, :image
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|

    f.inputs do
 f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
      f.input :balance
    end
      f.submit :submit
    end


    

def display_name
  self.email
end
controller do
       def find_resource
         scoped_collection.friendly.find(params[:id])
       end
     end
end

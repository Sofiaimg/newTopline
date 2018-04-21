ActiveAdmin.register Client do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :address, :country, :phone, :logo, :rut, :alias
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form do |f|
    f.inputs 'Clients' do
      f.input :logo
      f.input :alias
      f.input :name
      f.input :rut
      f.input :address, :as => :string
      f.input :country, :as => :string
      f.input :phone
    end
    f.actions
  end
end

ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :email, :family_id, :name, :age, :weight, :height, :password

index do
  column :id
  column :email
  column :name
  column :family_id
  column :created_at
  actions
end

form do |f|
  inputs 'Agreagando un nuevo usuario' do
    input :email
    input :family_id
    input :name
    input :age
    input :weight
    input :height
    input :password
  end
  actions
end

filter :email

end

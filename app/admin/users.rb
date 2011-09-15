ActiveAdmin.register User do

  index do
    column :id
    column :email
    column :player
    column :last_sign_in_at
    column :admin

    default_actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :admin
    end

    f.buttons
  end
  
end

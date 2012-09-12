# Encoding: utf-8
ActiveAdmin.register Inscription do
  index do
    column :name
    column :email
    column :company
    column :export do |inscription|
      link_to "Baixar CSV", export_inscription_path(inscription.id)
    end
    column :business_model do |inscription|
      link_to "Baixar o modelo de negócio", inscription.business_model.url
    end
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :age
      row :email
      row :phone
      row :city_and_state
      row :address
      row :url
      row :experiences do
        simple_format inscription.experiences
      end
      row :company
      row :what_do do
        simple_format inscription.what_do
      end
      row :ideia_business do
        simple_format inscription.ideia_business
      end
      row :site
      row :video_url
      row :business_model do
        link_to "Baixar o modelo de negócio", inscription.business_model.url
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :age
      f.input :email
      f.input :phone
      f.input :city_and_state
      f.input :address
      f.input :url
      f.input :experiences
      f.input :company
      f.input :what_do
      f.input :ideia_business
      f.input :site
      f.input :video_url
      f.input :business_model, :as => :file
      f.buttons
    end
  end

  filter :name
  filter :email
  filter :company
end

ActiveAdmin.register Inscription do
  index do
    column :name
    column :email
    column :company
    column :export do |inscription|
      link_to "Baixar CSV", "export_inscription_path(#{inscription.id})"
    end
    column :business_model do |inscription|
      link_to  inscription.business_model_file_name, inscription.business_model.url
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
        link_to inscription.business_model_file_name, inscription.business_model.url
      end
    end
    active_admin_comments
  end

  filter :name
  filter :email
  filter :company
end

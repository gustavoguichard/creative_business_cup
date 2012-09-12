class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.string :name
      t.string :age
      t.string :email
      t.string :phone
      t.string :city_and_state
      t.string :address
      t.string :url
      t.text :experiences
      t.string :company
      t.text :what_do
      t.text :ideia_business
      t.string :site
      t.string :video_url
      t.string :business_model_file_name

      t.timestamps
    end
  end
end

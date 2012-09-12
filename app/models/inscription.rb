class Inscription < ActiveRecord::Base
  attr_accessible :address, :age, :business_model, :city_and_state, :company, :email, :experiences, :ideia_business, :name, :phone, :site, :url, :video_url, :what_do
  validates :address, :age, :business_model, :city_and_state, :company, :email, :experiences, :ideia_business, :name, :phone, :what_do, presence: true
  validates :video_url, format: {with: URI::regexp(%w[http https])}
  validates :site, :url, format: {with: URI::regexp(%w[http https]), allow_nil: true, allow_blank: true}

  has_attached_file :business_model
end

class Profile < ActiveRecord::Base
  KINDS = ["Curator"]

  translates :bio
  has_many :profile_translations
  has_attached_file :avatar, {:styles => { default: "175x200>" }}.merge(S3_CONF)
  validates :name, :kind, presence: true
  validates_attachment_presence :avatar
  accepts_nested_attributes_for :profile_translations, :allow_destroy => true
  after_initialize :build_translations

  scope :curators, where(kind: "Curator")
  default_scope order: "position"

  protected
  def build_translations
    if profile_translations.empty?
      LOCALES.each do |lang|
        profile_translations.find_or_initialize_by_locale(lang[0])
      end
    end
  end
end

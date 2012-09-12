require 'machinist/active_record'

Event.blueprint do
end

EventTranslation.blueprint do
end

Schedule.blueprint do
  day {1}
  time {"08:15"}
end

ScheduleTranslation.blueprint do
end

Profile.blueprint do
  name    { Faker::Name.name }
  company { Faker::Company.name }
  kind    { "Speaker" }
  avatar  { File.new("#{Rails.root}/spec/fixtures/sample_images/avatar.jpg") }
end

ProfileTranslation.blueprint do
end



Video.blueprint do
  link {"https://vimeo.com/28220980"}
end


Inscription.blueprint do
  # Attributes here
end

namespace :education do
  desc "create categories for education"
  task make_categories: :environment do
    5.times do |i|
      categories_params = {name: Faker::Name.name, category_type: (i+2)/5}
      category = Education::Category.create! categories_params
    end
  end
end

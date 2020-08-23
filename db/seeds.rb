# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Get list of countries
countries = ['Russia', 'Germany', 'France', 'United Kingdom', 'Italy', 'Spain', 'Ukraine', 'Poland', 'Romania', 'Netherlands', 'Belgium', 'Greece', 'Portugal', 'Czech Republic', 'Hungary', 'Sweden', 'Belarus', 'Austria', 'Switzerland', 'Bulgaria', 'Serbia', 'Denmark', 'Finland', 'Slovakia', 'Norway', 'Ireland', 'Croatia', 'Bosnia and Herzegovina', 'Moldova', 'Lithuania', 'Albania', 'Macedonia', 'Slovenia', 'Latvia', 'Kosovo', 'Estonia', 'Montenegro', 'Luxembourg', 'Malta', 'Iceland', 'Andorra', 'Liechtenstein', 'Monaco', 'San Marino']


# Generate origin and destiny pairs for travels table
# To be changed
for ca in countries do
  countries_b = countries.reject{ |country|
      country == ca
    }
  for cb in countries_b do
    puts "#{ca} #{cb}"
    Trip.create!(
      origin_id: ca,
      destination_id: cb,
      open: [true, false].sample,
      quarantine: (0..14).to_a.sample, # still not sure about the type of this data
      test: (0..14).to_a.sample # still not sure about the type of this data
      )
  end
end

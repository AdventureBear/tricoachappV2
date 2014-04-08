# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


races = Race.create!([
	{
name: "Chicago Olympic Distance",
                      description: "PG-13",
                      race_category: "Olympic",
                      city: "Chicago",
                      state: "IL",
                      race_date: "2014-05-02"
},{

name: "St. Petersburgh Ironman",
                      description: "PG",
                      race_category: "Ironman",
                      city: "St. Petersburg",
                      state: "FL",
                      race_date: "2014-12-15"

},{

name: "Pittsburgh Half-Iron",
                      description: "PG-13",
                      race_category: "Half-Iron",
                      city: "Pittsburgh",
                      state: "PA",
                      race_date: "2014-05-03"
}
])
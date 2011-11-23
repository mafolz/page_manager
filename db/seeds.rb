# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Page.delete_all(:handle => [
                'tour-data',
                'members',
                'gallery',
                'music',
                'videos'
])

Page.create!({
  :handle     => "tour-data",
  :published  => true,
  :state      => 'solid',
  :seed       => true,
  :nodes_attributes => [{
  :title  => "Tourdaten",
  :text   => "Daten",
  :locale => :de
}]
})


Page.create!({
  :handle     => "members",
  :published  => true,
  :state      => 'solid',
  :seed       => true,
  :nodes_attributes => [{
  :path   => "die-band",
  :title  => "Band Mitglieder",
  :text   => "Daten",
  :locale => :de
}]
})



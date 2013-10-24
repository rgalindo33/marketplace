# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

users = User.create([{name: 'raul'},{name: 'pau'}])

apps = App.create([
  {
    name:"Stylist",
    description:"Your ultimate hairstyle app on Windows Phone! Stylist is an application for changing hairstyle and hair color both for women and men. It contains many hairstyles (almost 270) in different categories (such as long, medium, short, ...) with various hair colors(more than 100 colors) you can pick from.",
    publisher:"Daneshmandi",
    version:"1.0.1.1",
    size:"45 MB",
    price:"1.99$"},
  
])

Image.create({
  :id => 52, 
  :asset => File.new("#{Rails.root}/seed_images/1.jpg"),
  :app_id => 52
})
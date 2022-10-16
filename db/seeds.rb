# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "csv"

  Legend.destroy_all
  Role.destroy_all

  csv_file = Rails.root.join('db/apex.csv')
  csv_data = File.read(csv_file)

   legends = CSV.parse(csv_data, headers: true, encoding: 'iso-8859-1')


   legends.each do |legend|

    # Legend's role
    role_init = Role.find_or_create_by(name: legend['role'], role_img: legend['role_img'])

    if role_init && role_init.valid?
      legends_init = role_init.legends.create(
      name: legend['name'],
      title: legend['title'],
      quote: legend['quote'],
      description: legend['description'],
      passive: legend['passive'],
      tactical: legend['tactical'],
      ultimate: legend['ultimate'],
      img: legend['img'],
      image_url: legend['image_url']
      )
    end

  end
      puts "Created #{Legend.count} legends"
      puts "Created #{Role.count} role"
if Rails.env.development?
  App.destroy_all

  App.create name: "Dukan Diet", url: "itunes.com/dukan"
  App.create name: "Paleo Diet", url: "itunes.com/paleo"
  App.create name: "Raw Food Diet", url: "itunes.com/rawfood"
   
  puts "Development database ready for use!"
else
  puts "Do not run this in production!"
end
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
        name: Faker::Nation.capital_city
      )
      5.times do |index|
        review = destination.reviews.create!(
          author: Faker::TvShows::Seinfeld.character,
          review: Faker::TvShows::Seinfeld.quote,
          rating: rand(1...5)
        )
        destination.save
      puts "Destination #{i}."
      end
    end
  end
end

Seed.begin

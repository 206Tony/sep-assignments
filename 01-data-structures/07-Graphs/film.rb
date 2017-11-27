require_relative "node"

class Film
	attr_accessor :name
	attr_accessor :star

	def initialize(name, star)
		@name = name
		@star = star
		search_film_actor_hash(star)
	end

	def search_film_actor_hash(star)
		star.each do |actor|
			other_star = @star.dup
			other_star.delete(actor)
			actor.film_actor_hash[@name] = other_star
		end
	end
end

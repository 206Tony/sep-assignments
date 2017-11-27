require_relative 'node'
require_relative 'film'

def find_kevin_bacon(start_node)
	films = []
	while films.size <= 6
		start_node.film_actor_hash.each do |film|
			if film.star == "Kevin Bacon"
				films.push(film)
				return films
			else
				for i in 0..film_actor_hash.size do
					find_kevin_bacon(start_node.film_actor_hash([film][i]))
				end
			end
			return films
		end
	end

	def search_film_actor_hash(star)
		star.each do |actor|
			other_star = @star.dup
			other_star.delete(actor)
			actor.film_actor_hash[@name] = other_star
		end
	end
end

find_kevin_bacon("")
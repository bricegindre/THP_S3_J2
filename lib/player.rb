require 'pry'

class Player
	attr_accessor :name, :life_points

	def initialize(name)
		@name = name.to_s
		@life_points = 10.to_i
	end

	def show_state
		print "#{@name} a #{@life_points} points de vie  "
	end

	def gets_damage(damage_received)
		@life_points = @life_points - damage_received.to_i
		if @life_points <= 0
			puts "Le joueur #{@name} a été tué !"
		end
	end

	def attacks(player_attacked)
		puts "Le joeur #{@name} attaque le joueur #{player_attacked.name}"
		damage_received = compute_damage()
		player_attacked.gets_damage(damage_received)
		puts "il lui a infligé #{damage_received} points de dommage !"
	end

	def compute_damage
		return rand(1..6)
	end
end

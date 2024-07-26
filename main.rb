require_relative 'player'
require_relative 'game'
require_relative 'question'

puts "This is the 2-player Math Game!!!"
print "Player 1, Enter Name: "
player1 = gets.chomp
print "Player 2, Enter Name: "
player2 = gets.chomp
game = Game.new(player1, player2)

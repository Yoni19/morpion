require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'
require_relative 'game'

class Application

  #lance le message de début de jeu
  def start_game
    system('clear')
    puts "                       " +"-" *46
    puts "                       |                   LE MORPION               |"
    puts "                       |               Le jeu légendaire !          |"
    puts "                       |                  Qui gagnera ?             |"
    puts "                       |                     X ou O                 |"
    puts "                       " +"-" *46
    puts " "
    puts " "
    puts "                          Bienvenue sur le légendaire jeu du morpion !"
    puts "      Affronte un autre joueur (ou joue tout seul si t'as pas d'amis, c'est trite mais tu peux on juge pas)"
    puts "                          Soit le premier a aligner tes trois symboles"
    puts "                                          Let's gooooo ! "
    puts " "
  end

  #demande au joueur 1 son nom
  def ask_player1
    puts "      Pour commencer, que le premier joueur décline son identité !"
    print "      JOUEUR 1 :  "
    player1 = gets.chomp.to_s
  
    puts "      Ton symbole sera le X (OULALA)"
    puts " "
    return player1
  end

  #demande au joueur 2 son nom
  def ask_player2
    puts "      Pas de jaloux ici ! Joueur 2, a toi de décliner ton identité "
    print "      JOUEUR 2 : "
    player2 = gets.chomp.to_s
    
    puts "      Ton symbole sera le O"
    puts " "
    puts " "
    puts "      Puisque vous avez été dicipliné, la partie peut commencer !"
    puts "      Appuie sur entrée pour lancer le jeu"
    gets.chomp
    return player2
  end

  #demande aux joueurs s'ils veulent refaire une partie
  def ask_again(game)
    puts "      Veux-tu rejouer ? OUI / NON"
    print "      > "
    choice = gets.chomp
    puts " "
    while choice != "OUI" || choice != "NON"
      case choice
      when "OUI"
        #si oui, relance du jeu
        choice = " "
        game.new_round
        game.turn
      when "NON"
        #si non, fin du jeu avec  tableau de fin
        game.game_end
        break
      else
        #si l'entrée n'est pas bonne, retourne à l'choice
        puts "      Veux-tu rejouer ? OUI / NON"
        puts "      Ecrit OUI ou NON en majuscules : "
        print "      > "
        choice = gets.chomp
        puts " "
      end
    end

  end

  #va lancer l'application
  def perform
    start_game
    player1 = ask_player1
    player2 = ask_player2

    game = Game.new(player1,player2) #premiere partie
    game.turn

    ask_again(game) #joue tant que les joueurs n'arretent pas

  end
  
end
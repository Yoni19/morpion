require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'
  
  
  class Game < Board
    attr_accessor :players, :board, :current_player
     
    def initialize(player1, player2)
      @board = Board.new
  
      @players = []
  
      #va créer nos deux joueurs et les mettre dans un array
      @current_player = Player.new(player1, "X", 0)
      @players << @current_player
      @current_player = Player.new(player2, "O", 0)
      @players << @current_player
  
    end

    def score 
      #affiche les scores à la fin de chaque parties
      puts " "
      puts " "
      print "      "
      puts "-" * 48
      puts "                  -- TABLEAU DES SCORES --          "
      puts "            #{players[0].name} a gagné #{players[0].win} fois !                  "
      puts "            #{players[1].name} a gagné #{players[1].win} fois !                  "
      print "      "
      puts "-" * 48
      puts " "
  
    end

    def turn

      loop do
  
      system('clear') #nettoyer l'affichage
  
        board.board_organisation
  
        #tour du joueur 1
        puts "      C'est au tour de : #{players[0].name}"
        board.play_turn("1")
        board.board_organisation
  
        #sors de la boucle en cas de victoire du joueur 1
        if board.victory? == "X"
          puts "      Bravo #{players[0].name} ! "
          puts "      C'est une victoire !"
          players[0].win += 1
          break
        end
  
        #sors de la boucle en cas d'égalité
        if board.victory? == "égalité"
          puts "      Pas de gagnants ! C'est une égalité ! autrement dit vous etes des nazes"
          puts "      Relancez une partie, vu votre niveau, va falloir s'entrainer..."
          break
        end
  
        #tour du joueur 2
        puts "      C'est au tour de : #{players[1].name}"
        board.play_turn("02")
        board.board_organisation
  
        #sors de la boucle en cas de victoire du joueur 2
        if board.victory? == "O"
          puts "      Bravo #{players[1].name} ! "
          puts "      C'est une victoire !"
          players[1].win +=1
          break
        end
  
      end
  
      score #affiche les scores
  
    end
  

  def new_round
      board.board_clean #nettoie le tableau
  end
  
  def game_end
    #affiche la fin de toutes les parties avec le tableau des scores final

    system('clear') #nettoyer l'affichage
    puts " "
    puts " "
    puts " "
    puts " "
    puts "                              C'est terminé !"
    puts "              Nous esperons que vous avez apprecié notre jeu !"
    puts " "
    puts "      Voici un petit rappel des scores finaux !(y'en a un qui s'est fait marave...)"
    puts "                 Bravo à tous les deux !(surtout a celui qui a gagné)"
    score
    puts " "
    puts " "
    puts " "
  end    
  
end


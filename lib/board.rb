require 'pry'
require_relative 'boardcase'
require_relative 'player'

class Board
  attr_accessor :array_case
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué


  def initialize
    @array_case = []

    @array_case << BoardCase.new("A1")
    @array_case << BoardCase.new("A2")
    @array_case << BoardCase.new("A3")
    @array_case << BoardCase.new("B1")
    @array_case << BoardCase.new("B2")
    @array_case << BoardCase.new("B3")
    @array_case << BoardCase.new("C1")
    @array_case << BoardCase.new("C2")
    @array_case << BoardCase.new("C3")

  end
  
  def board_organisation
    puts " Pour jouer c'est simple, chaque ligne correspond a une lettre"
    puts "Et chaque colonne à un chiffre, ainsi pour jouer la premiere case de la grille"
    puts "Tu dois taper A1"
    puts " "
    puts "                  #{@array_case[0].value}  |   #{@array_case[1].value}  |   #{@array_case[2].value}"
    puts "                  "+"-"*15
    puts " "
    puts "                  #{@array_case[3].value}  |   #{@array_case[4].value}  |   #{@array_case[5].value}"
    puts "                  "+"-"*15
    puts " "
    puts "                  #{@array_case[6].value}  |   #{@array_case[7].value}  |   #{@array_case[8].value}"
    puts " "
  
  end

  def board_clean
    c = " "
    @array_case[0].value = c
    @array_case[1].value = c
    @array_case[2].value = c
    @array_case[3].value = c
    @array_case[4].value = c
    @array_case[5].value = c
    @array_case[6].value = c
    @array_case[7].value = c
    @array_case[8].value = c
  end

  def play_turn(player)
   if player == "1"
    s = "X"
   else 
    s = "O"
   end
    
    puts "Alors,que veux-tu faire ? a ton tour !"
    print "> "
    choice = gets.chomp.to_s
    
    
    case choice
      when "A1"
        if @array_case[0].value != " "
          puts " "
          puts "      Pas de triche petit malin"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu peux pas !"
          puts "      Choisi une autre case : "
          print "      > "
          choice = gets.chomp
        else
          @array_case[0].value = s
        end

        when "A2"
          if @array_case[1].value != " "
            puts " "
            puts "      Pas de triche petit malin"
            puts "      Tu as essayé de voler une case à ton adversaire, mais tu peux pas !"
            puts "      Choisi une autre case : "
            print "      > "
            choice = gets.chomp
          else
            @array_case[1].value = s

          end

        when "A3"
          if @array_case[2].value != " "
            puts " "
            puts "      Pas de triche petit malin"
            puts "      Tu as essayé de voler une case à ton adversaire, mais tu peux pas !"
            puts "      Choisi une autre case : "
            print "      > "
            choice = gets.chomp
          else
            @array_case[2].value = s

          end
      

        when "B1"
          if @array_case[3].value != " "
            puts " "
            puts "      Pas de triche petit malin"
            puts "      Tu as essayé de voler une case à ton adversaire, mais tu peux pas !"
            puts "      Choisi une autre case : "
            print "      > "
            choice = gets.chomp
          else
            @array_case[3].value = s

          end
          
        

        when "B2"
          if @array_case[4].value != " "
            puts " "
            puts "      Pas de triche petit malin"
            puts "      Tu as essayé de voler une case à ton adversaire, mais tu peux pas !"
            puts "      Choisi une autre case : "
            print "      > "
            choice = gets.chomp
          else
            @array_case[4].value = s

          end
        
    
        when "B3"
          if @array_case[5].value != " "
            puts " "
            puts "      Pas de triche petit malin"
            puts "      Tu as essayé de voler une case à ton adversaire, mais tu peux pas !"
            puts "      Choisi une autre case : "
            print "      > "
            choice = gets.chomp
          else
            @array_case[5].value = s

            
          end
        

        when "C1"
          if @array_case[6].value != " "
            puts " "
            puts "      Pas de triche petit malin"
            puts "      Tu as essayé de voler une case à ton adversaire, mais tu peux pas !"
            puts "      Choisi une autre case : "
            print "      > "
            choice = gets.chomp
          else
            @array_case[6].value = s

          end

        when "C2"
          if @array_case[7].value != " "
            puts " "
            puts "      Pas de triche petit malin"
            puts "      Tu as essayé de voler une case à ton adversaire, mais tu peux pas !"
            puts "      Choisi une autre case : "
            print "      > "
            choice = gets.chomp
          else
            @array_case[7].value = s
          end
        
        when "C3"
          if @array_case[8].value != " "
            puts " "
            puts "      Pas de triche petit malin"
            puts "      Tu as essayé de voler une case à ton adversaire, mais tu peux pas !"
            puts "      Choisi une autre case : "
            print "      > "
            choice = gets.chomp
          else
            @array_case[8].value = s
          end
        else 
          puts "T'es un peu con non ? FAUT LIRE LES REGLES ! Tu perds un tour. FALLAIT PAS ETRE CON !"
        
      end
  end

  def victory?
    #Victoire du joueur 1
    if @array_case[0].value == @array_case[1].value && @array_case[1].value == @array_case[2].value && @array_case[2].value == "X"
      return "X"
    elsif @array_case[3].value == @array_case[4].value && @array_case[4].value == @array_case[5].value && @array_case[5].value == "X"
      return "X"
    elsif @array_case[6].value == @array_case[7].value && @array_case[7].value == @array_case[8].value && @array_case[8].value == "X"
      return "X"
    elsif @array_case[0].value == @array_case[3].value && @array_case[3].value == @array_case[6].value && @array_case[6].value == "X"
      return "X"
    elsif @array_case[1].value == @array_case[4].value && @array_case[4].value == @array_case[7].value && @array_case[7].value == "X"
      return "X"
    elsif @array_case[2].value == @array_case[5].value && @array_case[5].value == @array_case[8].value && @array_case[8].value == "X"
      return "X"
    elsif @array_case[0].value == @array_case[4].value && @array_case[4].value == @array_case[8].value && @array_case[8].value == "X"
      return "X"
    elsif @array_case[2].value == @array_case[4].value && @array_case[4].value == @array_case[6].value && @array_case[6].value == "X"
      return "X"
       #Victoire du joueur 2
    elsif @array_case[0].value == @array_case[1].value && @array_case[1].value == @array_case[2].value && @array_case[2].value == "O"
      return "O"
    elsif @array_case[3].value == @array_case[4].value && @array_case[4].value == @array_case[5].value && @array_case[5].value == "O"
      return "O"
    elsif @array_case[6].value == @array_case[7].value && @array_case[7].value == @array_case[8].value && @array_case[8].value == "O"
      return "O"
    elsif @array_case[0].value == @array_case[3].value && @array_case[3].value == @array_case[6].value && @array_case[6].value == "O"
      return "O"
    elsif @array_case[1].value == @array_case[4].value && @array_case[4].value == @array_case[7].value && @array_case[7].value == "O"
      return "O"
    elsif @array_case[2].value == @array_case[5].value && @array_case[5].value == @array_case[8].value && @array_case[8].value == "O"
      return "O"
    elsif @array_case[0].value == @array_case[4].value && @array_case[4].value == @array_case[8].value && @array_case[8].value == "O"
      return "O"
    elsif @array_case[2].value == @array_case[4].value && @array_case[4].value == @array_case[6].value && @array_case[6].value == "O"
      return "O"
    #si egalité
    elsif @array_case[0].value != " " && @array_case[1].value != " " && @array_case[2].value != " " && @array_case[3].value != " " && @array_case[4].value != " " && @array_case[5].value != " " && @array_case[6].value != " " &&@array_case[7].value != " " && @array_case[8].value != " "
      return "égalité"
    else 
      return false
    end
  end
end

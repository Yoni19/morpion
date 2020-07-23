class Player
  attr_reader :name, :symbol
  attr_accessor :win
    
  def initialize(name,symbol,win)
    #name correspond au nom du joueur
    @name = name
    #X ou O
    @symbol = symbol
    #Compter de victoire, si j'y arrive lol
    @win = win
  end

end
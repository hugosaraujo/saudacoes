class Anfitriao
    attr_accessor :nome

    def initialize(nome = "Mundo")
        @nome = nome.capitalize 
    end
    def diz_ola 
        puts "Olá #{@nome}!"
    end
    def diz_adeus 
        puts "Adeus #{@nome}, volte sempre"
    end
end

g = Anfitriao.new("amanda")

puts g.respond_to?("nome")
puts g.respond_to?("nome=")

g.diz_ola
g.diz_adeus


#não posso acessar o @nome utilizando o objeto g. O interpretador vai acusar erro. 




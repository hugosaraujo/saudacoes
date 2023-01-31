class MegaAnfitriao 
    attr_accessor :nomes
    def initialize(nomes = "Mundo")
        @nomes = nomes 
    end
    def diz_ola 
        if @nomes.nil?
         puts "..."
    elsif @nomes.respond_to?("each")
        @nomes.each do |nome|
            puts "Olá #{nome}"
        end 
    else
        puts "Olá #{@nomes}"
    end
end

def diz_ola
    if @nomes.nil?
        puts "..."
    elsif @nomes.respond_to?("each")
        @nomes.each do |nome|
            puts "Olá #{nome}"
        end
    else
        puts "Ola #{@nomes}"
    end
end
    
def diz_adeus
    if @nomes.nil?
        puts "..."
    elsif @nomes.respond_to?("join")
        puts "Adeus #{nomes.join(", ")}. Voltem em breve. "
    else
        puts "Adeus #{@nomes}. Volta em breve"
    end
end
end

if __FILE__ == $0
    mg = MegaAnfitriao.new 
    mg.diz_ola
    mg.diz_adeus

    mg.nomes = ["Alberto", "Amanda", "Cara de Sapato", "Domitila"]
    mg.diz_ola
    mg.diz_adeus

    mg.nomes = nil 
    mg.diz_ola
    mg.diz_adeus 
end

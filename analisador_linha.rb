class AnalisadorLinha

  def initialize(n_linha, conteudo)
    @n_linha = n_linha
    @conteudo =  conteudo
    @max = 0
    @maiores_palavra = []
    end


  def gerar_analise()
    @frequencia = @conteudo.split.each_with_object(Hash.new(0)) {
      |palavra, hash| hash[palavra] += 1
    }
  end

  def maior_frequencia()
    @frequencia.each{ |k,v|
      if @max <= v
        @maiores_palavra.push(k)
        @max = v
      end
    }
    return @maiores_palavra
  end

  def to_str
    "Frequência: #{@frequencia} | Linha: #{@n_linha + 1} | palavra(s) com mais frequência:  #{maior_frequencia} \n"
  end
end

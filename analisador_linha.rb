class AnalisadorLinha
  def initialize(n_linha, conteudo)
    @n_linha = n_linha
    @conteudo = conteudo
    @frequencia = 0
  end
  def gerar_analise()
    @frequencia = @conteudo.split.each_with_object(Hash.new(0)) {
      |palavra, hash|
      hash[palavra] += 1
    }
  end
  def to_str
      "#{@frequencia} \n"
  end
end

numero_linhas = 0
File.open('palavras.txt').each do |conteudo|
  analiseFinal = AnalisadorLinha.new(numero_linhas, conteudo)
  analiseFinal.gerar_analise
  print(analiseFinal.to_str)
  numero_linhas += 1
end
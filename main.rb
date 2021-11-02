require_relative 'analisador_linha'

numero_linhas = 0

File.open('palavras.txt').each do |conteudo|
  analiseFinal = AnalisadorLinha.new(numero_linhas, conteudo)
  analiseFinal.gerar_analise
  print(analiseFinal.to_str)
  numero_linhas += 1
end

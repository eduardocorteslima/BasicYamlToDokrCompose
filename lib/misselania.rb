def adiconar_portas?
  puts "Deseja adicionar portas[s/n]"
  resposta = gets.chomp
  resposta == 's'
end

def criar_novo_servico?
  puts "Criar novo serviço? [s/n]"
  (gets.chomp == 's') ? true : false
end

def criar_nova_variavel?
  puts "Criar nova variavel de ambiente? [s/n]"
  (gets.chomp == 's') ? true : false
end

def criar_nova_porta?
  puts "Criar nova porta mapeada? [s/n]"
  (gets.chomp == 's') ? true : false
end

#Define metodo salvar
def save obj,file_name
    File.open("#{file_name}.yaml", "w") do  |f|
      f.write(obj)
    end
end
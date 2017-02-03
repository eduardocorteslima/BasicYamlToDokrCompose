require "yaml"
require_relative 'lib/version/app'
require_relative 'lib/services/containers/port/port_map'
require_relative 'lib/services/containers/container'
require_relative 'lib/projeto'
require_relative 'lib/misselania'

puts "Iniciando programa"
puts "Por favor informe o nome do projeto"
project_name = gets.chomp
containers = []

loop do
  puts "O projeto #{project_name} deve ter pelo menos um serviço (container)"
  puts "Voce tem #{containers.size} serviço"
  puts "Nome do seriço :"

  #Cria um novo container
  container = Container.new gets.chomp
  puts "nome da imagem"
  container.image =  gets.chomp

  #Adiciona variaveis de ambiente para o container
  loop do
    puts "Informe o nome da variavel"
    key = gets.chomp.capitalize
    puts "Informe o valor da variavel"
    value = gets.chomp.capitalize
    container.addEnv key, value
    break if not  criar_nova_variavel?
  end

  #Adiciona portas
  loop do
    puts "Informe a porta do host"
    host = gets.chomp
    puts "Informe a porta do container"
    container_p = gets.chomp
    container.addPort("#{host}:#{container_p}")
    break if not  criar_nova_porta?
  end

  #Adiciona Container ao Arry de containers
  containers.push container
  
  #Para de criar containers
  break if not  criar_novo_servico?
end

projeto = Projeto.new project_name, containers
save( projeto.to_hash.to_yaml,projeto.name )
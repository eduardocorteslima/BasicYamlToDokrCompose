class Projeto
  attr_accessor :name

  def initialize name, services
    @name = name
    @services = services
  end

  def services_to_hash
    h = Hash.new
    @services.each do |s|
      h[s.name]=s.to_hash
    end
    h
  end

  

  def to_hash
    { 
      "version"=>Version::YAMLFILE ,
      "services"=>services_to_hash
     }
  end

end
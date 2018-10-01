class Projeto
  attr_accessor :name

  def initialize (name, services)
    @name = name
    @services = services
  end

  def services_to_hash
    hash = Hash.new
    @services.each { |s| hash[s.name] = s.to_hash }
  end

  def to_hash
    { 
      "version"=>Version::YAMLFILE,
      "services"=>services_to_hash
    }
  end
end

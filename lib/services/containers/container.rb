require_relative "#{Dir.pwd}/lib/behaivor/hashable"

class Container < Behaivor::Hashable

  attr_accessor :name, :port_maps, :environments, :image

  def initialize name
    @name = name
    @port_maps = []
    @environments = Hash.new
  end

  def addEnv(key,value)
    @environments[key]=value
  end

  def addPort( port )
    @port_maps.push port
  end

  def image name
    @image = name
  end

  def to_hash
    {"image"=>@image,"ports"=>@port_maps, "environment"=>@environments}
  end

  def getEnvs
  end
end
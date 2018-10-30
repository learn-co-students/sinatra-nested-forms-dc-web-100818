class Ship

  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v)
    end

    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end

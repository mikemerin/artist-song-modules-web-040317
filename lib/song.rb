class Song

  require_relative './artist.rb'
  require_relative '../lib/concerns/memorable.rb'
  require_relative '../lib/concerns/findable.rb'
  require_relative '../lib/concerns/paramable.rb'

  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name, :artist

  @@songs = []

  # def initialize() self.class.all << self end

  def self.all() @@songs end

end

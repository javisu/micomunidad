class Galeria < ActiveRecord::Base
  attr_accessible :titulo
  has_many :fotos
end

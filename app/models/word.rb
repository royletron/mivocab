class Word < ActiveRecord::Base
  attr_accessible :description, :english, :objective, :spanish
  attr_accessible :image
  has_attached_file :image, :styles => { :jumbo => "512x512#", :medium => "300x300>", :thumb => "100x100>", :tiny => "50x50>" }, :default_url => "/images/:style/missing.png"
  belongs_to :objective
end

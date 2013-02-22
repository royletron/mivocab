class Objective < ActiveRecord::Base
  attr_accessible :english_name, :spanish_name

  has_many :words, :dependent => :destroy
  accepts_nested_attributes_for :words, :allow_destroy => :true
end

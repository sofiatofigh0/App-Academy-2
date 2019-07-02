require_relative 'piece'
require 'colorize'

class Rook < Piece 
  attr_accessor :val, :color

  def initialize(color, val)
    super(color, val)
  end
  
end

#rook = Rook.new(:blue, 'R')


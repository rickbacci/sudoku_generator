require_relative '../sudoku'
require 'spec_helper'

describe Sudoku, "Check for valid puzzle" do
  before(:each) do
    @puzzle = puzzle
  end

  it "should calculate as +" do
    @puzzle.should [45, 45, 45, 45, 45, 45, 45, 45, 45]
  end
end
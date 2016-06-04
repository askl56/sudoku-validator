module Sudoku
  class ColumnValidator
    def initialize(grid)
      @validator = RowValidator.new(grid.transpose)
    end

    def valid?
      @validator.valid?
    end
  end
end

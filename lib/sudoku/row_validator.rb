module Sudoku
  class RowValidator
    def initialize(grid)
      @grid = grid
    end

    def valid?
      has_no_duplicates?
    end

    private

    def has_no_duplicates?
      converted_zeroes_to_nil.all? { |row| row.uniq.size == row.size }
    end

    def converted_zeroes_to_nil
      @grid.map do |row|
        row.select do |i|
          i != '0'
        end
      end
    end
  end
end

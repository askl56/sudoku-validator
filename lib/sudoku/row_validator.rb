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
      pruned_array.all? { |row| row.uniq.size == row.size }
    end

    def pruned_array
      @grid.map! do |row|
        row.select do |i|
          i != '0'
        end
      end
    end
  end
end

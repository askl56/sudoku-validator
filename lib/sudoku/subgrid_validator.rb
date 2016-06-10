module Sudoku
  class SubgridValidator
    def initialize(grid)
      modified_grid = subgrids_to_rows(grid)
      @validator = RowValidator.new(modified_grid)
    end

    def valid?
      @validator.valid?
    end

    private

    def subgrids_to_rows(grid)
      grid.each_slice(3).each_with_object([]) do |rows, new_grid|
        new_grid.push(*row_of_subgrids(rows))
      end
    end

    def row_of_subgrids(rows)
      rows.flatten.each_slice(3).group_by.with_index { |_, i| i % 3 }
      .map { |i, e| e.flatten }
    end
  end
end

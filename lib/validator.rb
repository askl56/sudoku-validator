class Validator
  def initialize(puzzle_string)
    @puzzle_string = puzzle_string
    @grid = Sudoku::FileParse.new(@puzzle_string).grid
    @complete = @grid.flatten.none? { |e| e == '0' }
  end

  def self.validate(puzzle_string)
    new(puzzle_string).validate
  end

  def validate
    validators = [Sudoku::RowValidator, Sudoku::ColumnValidator, Sudoku::SubgridValidator]
    if validators.all? { |v| v.new(@grid).valid? }
      ending = complete?(@grid) ? '.' : ', but incomplete.'
      return "This sudoku is valid#{ending}"
    else
      return "This sudoku is invalid."
    end
  end

  def complete?(grid)
    @complete
  end
end

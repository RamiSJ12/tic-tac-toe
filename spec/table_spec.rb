require './lib/table.rb'
require './lib/colors.rb'

describe Table do
  describe '#initialize' do
    let(:new_table) { Table.new }
    let(:initial_table) { { '1': 1, '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9 } }

    it 'returns the initial table' do
      expect(new_table.table).to eql initial_table
    end

    it 'returns modified table' do
      expect(new_table.modify_table(9, 'x'.pink)).to eql initial_table[9] = 'x'.pink
    end

    it 'returns true if the index is greater than 9' do
      expect(new_table.valid_move(10)).to eql true
    end

    it 'returns true if the index is less than 1' do
      expect(new_table.valid_move(0)).to eql true
    end

    it 'returns false when the index is between 1..9' do
      expect(new_table.valid_move(2)).to eql false
    end

    it 'returns true when the index is x or o' do
      new_table.modify_table(9, 'x')
      expect(new_table.valid_move(9)).to eql true
    end

    it 'returns nil' do
      expect(new_table.check_win).to eql nil
    end

    it 'returns 1 if winner wins with a row' do
      new_table.modify_table(1, 'x')
      new_table.modify_table(2, 'x')
      new_table.modify_table(3, 'x')
      expect(new_table.check_win).to eql 1
    end

    it 'returns 1 if winner wins with a row' do
      new_table.modify_table(4, 'x')
      new_table.modify_table(5, 'x')
      new_table.modify_table(6, 'x')
      expect(new_table.check_win).to eql 1
    end

    it 'returns 1 if winner wins with a row' do
      new_table.modify_table(7, 'x')
      new_table.modify_table(8, 'x')
      new_table.modify_table(9, 'x')
      expect(new_table.check_win).to eql 1
    end

    it 'returns 2 if winner wins with a column' do
      new_table.modify_table(1, 'x')
      new_table.modify_table(4, 'x')
      new_table.modify_table(7, 'x')
      expect(new_table.check_win).to eql 2
    end

    it 'returns 2 if winner wins with a column' do
      new_table.modify_table(2, 'x')
      new_table.modify_table(5, 'x')
      new_table.modify_table(8, 'x')
      expect(new_table.check_win).to eql 2
    end

    it 'returns 2 if winner wins with a column' do
      new_table.modify_table(3, 'x')
      new_table.modify_table(6, 'x')
      new_table.modify_table(9, 'x')
      expect(new_table.check_win).to eql 2
    end

    it 'returns 3 if winner wins with a diagonal' do
      new_table.modify_table(3, 'x')
      new_table.modify_table(5, 'x')
      new_table.modify_table(7, 'x')
      expect(new_table.check_win).to eql 3
    end

    it 'returns 3 if winner wins with a diagonal' do
      new_table.modify_table(1, 'x')
      new_table.modify_table(5, 'x')
      new_table.modify_table(9, 'x')
      expect(new_table.check_win).to eql 3
    end
  end
end

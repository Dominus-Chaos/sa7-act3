require 'csv'

def csv_hash (filepath)
    data = []
    CSV.foreach(filepath, headers: true) do |row|
        data << row.to_h
    end
    data
end

csv_filepath = 'data.csv'
returned = csv_hash(csv_filepath)
puts returned
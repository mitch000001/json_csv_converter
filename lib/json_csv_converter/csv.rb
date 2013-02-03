module JSONCSVConverter
  
  if RUBY_VERSION < "1.9"
    require 'fastercsv'
    const_set(:CSV,FasterCSV)
  else
    require 'csv'
  end
  
end
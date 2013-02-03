require 'rubygems'
require 'fastercsv'
require 'json'
require 'yaml'

require 'json_csv_converter/version'
require 'json_csv_converter/csv'
require 'json_csv_converter/converter'

module JSONCSVConverter
  
  def json_to_csv json,csv,mapping,option={}
    Converter.new(json,csv,mapping,options).json_to_csv.csv_table
  end

end

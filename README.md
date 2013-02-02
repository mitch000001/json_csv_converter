# JSON CSV Converter

This gem is built to help at the migration between existing JSON files into the mappings of existing CSV tables and vice versa.
To map the keys you provide a YAML file.

## Status

[![Code Climate](https://codeclimate.com/github/mitch000001/json_csv_converter.png)](https://codeclimate.com/github/mitch000001/json_csv_converter)

## Installation

Add this line to your application's Gemfile:

    gem 'json_csv_converter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install json_csv_converter
    
## Usage

To convert the data of an existing JSON file into an existing CSV table just run `JSONCSVConverter::json_to_csv` with the JSON path, the CSV path and the YAML mapping file path as arguments. This method returns a `CSV::Table`.

The gem also provides an executable named `json_csv_converter`. It currently only supports conversion from JSON to CSV.
If you run

    $ json_csv_converter <i>path_to_json</i> <i>path_to_csv</i> <i>path_to_yaml_mapping</i>
    
you get the completely converted CSV table as String for further processing.

### Example:

~~~ruby
# create an instance to work with
converter = JSONCSVConverter::Converter.new(json_path,csv_path,mapping_path)

# map each JSON Object to a CSV row
converter.json_to_csv

# get the CSV table
csv_table = converter.csv_table

# get the JSON instance
json = converter.json

# Or simply run the toplevel method
csv_table = JSONCSVConverter.json_to_csv(json_path,csv_path,mapping_path)
~~~
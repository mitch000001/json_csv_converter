module JSONCSVConverter

  class Converter
    
    attr_reader :csv_table, :json, :mapping
  
    def initialize(json,csv,mapping,options={})
      @json_path = json
      @json_name = options[:json_name] || File.basename(json,'.json')
      @json = JSON.load(File.open(json))
      @csv_path = csv
      @csv_table = CSV.table(csv,options)
      @mapping = YAML.load_file(mapping)
    end
  
    def json_to_csv
      headers = @csv_table.headers
      @json[@json_name].each do |element|
        row = CSV::Row.new([],[])
        headers.each do |column|
          column_hash = {}
          mapping_key = @mapping["to_csv"][column.to_s]
          if mapping_key.kind_of? Array
            column_hash[column] = mapping_key.inject(element) {|whole,map_key|whole = whole[map_key]}
          else
            column_hash[column] = element[mapping_key]
          end
          row << column_hash
        end
        @csv_table << row
      end
      self
    end
      
  end

end

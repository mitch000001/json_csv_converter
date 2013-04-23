require 'spec_helper'

describe JSONCSVConverter::Converter do
  
  before do
    @converter = JSONCSVConverter::Converter.new("spec/fixtures/tests.json","spec/fixtures/test.csv","spec/fixtures/test_mapping.yml")
  end
  
  subject {@converter}
  
  it {should_not be_nil}
  it {should respond_to(:csv_table)}
  it {should respond_to(:json)}
  it {should respond_to(:json_to_csv)}
  it {should respond_to(:csv_to_json)}

  describe "migrate data from json to csv" do
    
    it "#csv_table should return the old csv table with the json data appended" do
      expected = <<-EOF
fohoo,bahaar
tidy up,41
3,string
      EOF
      @converter.csv_table.to_csv.should == expected
    end
    
  end

  describe "migrate data from csv to json" do

    it "#json should return the old json object with the csv data appended" do
      expected = %q({"tests":[{"foo":3,"bar":"string"},{"foo":"tidy up","bar":41}]})
      @converter.csv_to_json.should == expected
    end

  end

end

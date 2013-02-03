require 'spec_helper'

describe JSONCSVConverter::Converter do
  
  before do
    @converter = JSONCSVConverter::Converter.new("spec/fixtures/tests.json","spec/fixtures/test.csv","spec/fixtures/test_mapping.yml")
  end
  
  subject {@converter}
  
  it {should_not be_nil}
  
  describe "#csv_table" do
    it {@converter.csv_table.class.to_s.should == "CSV::Table"}
  end
  
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
  
end

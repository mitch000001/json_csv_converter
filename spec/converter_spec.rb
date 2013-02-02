require 'spec_helper'

describe JSONCSVConverter::Converter do
  
  before do
    @converter = JSONCSVConverter::Converter.new("spec/fixtures/test.json","spec/fixtures/test.csv","spec/fixtures/test_mapping.yml")
  end
  
  subject {@converter}
  
  it {should_not be_nil}
  
end

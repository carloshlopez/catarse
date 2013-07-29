require 'spec_helper'

describe "validators/edit" do
  before(:each) do
    @validator = assign(:validator, stub_model(Validator,
      :name => "MyString"
    ))
  end

  it "renders the edit validator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", validator_path(@validator), "post" do
      assert_select "input#validator_name[name=?]", "validator[name]"
    end
  end
end

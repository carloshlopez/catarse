require 'spec_helper'

describe "validators/new" do
  before(:each) do
    assign(:validator, stub_model(Validator,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new validator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", validators_path, "post" do
      assert_select "input#validator_name[name=?]", "validator[name]"
    end
  end
end

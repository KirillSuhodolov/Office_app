require 'spec_helper'

describe "managers/new" do
  before(:each) do
    assign(:manager, stub_model(Manager,
      :manager_name => "MyString"
    ).as_new_record)
  end

  it "renders new manager form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => managers_path, :method => "post" do
      assert_select "input#manager_manager_name", :name => "manager[manager_name]"
    end
  end
end

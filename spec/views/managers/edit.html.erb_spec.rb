require 'spec_helper'

describe "managers/edit" do
  before(:each) do
    @manager = assign(:manager, stub_model(Manager,
      :manager_name => "MyString"
    ))
  end

  it "renders the edit manager form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => managers_path(@manager), :method => "post" do
      assert_select "input#manager_manager_name", :name => "manager[manager_name]"
    end
  end
end

require 'spec_helper'

describe "organizations/new" do
  before(:each) do
    assign(:organization, stub_model(Organization,
      :organization_name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organizations_path, :method => "post" do
      assert_select "input#organization_organization_name", :name => "organization[organization_name]"
      assert_select "input#organization_description", :name => "organization[description]"
    end
  end
end

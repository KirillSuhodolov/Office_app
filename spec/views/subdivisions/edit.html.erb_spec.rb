require 'spec_helper'

describe "subdivisions/edit" do
  before(:each) do
    @subdivision = assign(:subdivision, stub_model(Subdivision,
      :subdivision_name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit subdivision form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => subdivisions_path(@subdivision), :method => "post" do
      assert_select "input#subdivision_subdivision_name", :name => "subdivision[subdivision_name]"
      assert_select "input#subdivision_description", :name => "subdivision[description]"
    end
  end
end

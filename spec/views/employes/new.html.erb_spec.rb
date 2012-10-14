require 'spec_helper'

describe "employes/new" do
  before(:each) do
    assign(:employe, stub_model(Employe,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new employe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employes_path, :method => "post" do
      assert_select "input#employe_name", :name => "employe[name]"
    end
  end
end

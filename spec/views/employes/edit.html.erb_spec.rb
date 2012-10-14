require 'spec_helper'

describe "employes/edit" do
  before(:each) do
    @employe = assign(:employe, stub_model(Employe,
      :name => "MyString"
    ))
  end

  it "renders the edit employe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employes_path(@employe), :method => "post" do
      assert_select "input#employe_name", :name => "employe[name]"
    end
  end
end

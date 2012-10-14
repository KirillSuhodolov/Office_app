require 'spec_helper'

describe "subdivisions/index" do
  before(:each) do
    assign(:subdivisions, [
      stub_model(Subdivision,
        :subdivision_name => "Subdivision Name",
        :description => "Description"
      ),
      stub_model(Subdivision,
        :subdivision_name => "Subdivision Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of subdivisions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subdivision Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

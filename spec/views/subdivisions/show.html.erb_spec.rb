require 'spec_helper'

describe "subdivisions/show" do
  before(:each) do
    @subdivision = assign(:subdivision, stub_model(Subdivision,
      :subdivision_name => "Subdivision Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subdivision Name/)
    rendered.should match(/Description/)
  end
end

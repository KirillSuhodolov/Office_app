require 'spec_helper'

describe "repots/show" do
  before(:each) do
    @repot = assign(:repot, stub_model(Repot,
      :eploye_id => 1,
      :subdivision_id => 2,
      :organization_id => 3,
      :hours => 4,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Description/)
  end
end

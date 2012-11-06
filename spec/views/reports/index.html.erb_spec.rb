require 'spec_helper'

describe "reports/index" do
  before(:each) do
    assign(:reports, [
      stub_model(Report,
        :eploye_id => 1,
        :subdivision_id => 2,
        :organization_id => 3,
        :hours => 4,
        :description => "Description"
      ),
      stub_model(Report,
        :eploye_id => 1,
        :subdivision_id => 2,
        :organization_id => 3,
        :hours => 4,
        :description => "Description"
      )
    ])
  end

  it "renders a list of reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

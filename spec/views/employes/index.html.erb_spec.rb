require 'spec_helper'

describe "employes/index" do
  before(:each) do
    assign(:employes, [
      stub_model(Employe,
        :name => "Name"
      ),
      stub_model(Employe,
        :name => "Name"
      )
    ])
  end

  it "renders a list of employes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

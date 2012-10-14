require 'spec_helper'

describe "employes/show" do
  before(:each) do
    @employe = assign(:employe, stub_model(Employe,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

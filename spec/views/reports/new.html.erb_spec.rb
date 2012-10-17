require 'spec_helper'

describe "repots/new" do
  before(:each) do
    assign(:repot, stub_model(Repot,
      :eploye_id => 1,
      :subdivision_id => 1,
      :organization_id => 1,
      :hours => 1,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new repot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => repots_path, :method => "post" do
      assert_select "input#repot_eploye_id", :name => "repot[eploye_id]"
      assert_select "input#repot_subdivision_id", :name => "repot[subdivision_id]"
      assert_select "input#repot_organization_id", :name => "repot[organization_id]"
      assert_select "input#repot_hours", :name => "repot[hours]"
      assert_select "input#repot_description", :name => "repot[description]"
    end
  end
end

require 'spec_helper'

describe "reports/new" do
  before(:each) do
    assign(:report, stub_model(Report,
      :eploye_id => 1,
      :subdivision_id => 1,
      :organization_id => 1,
      :hours => 1,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reports_path, :method => "post" do
      assert_select "input#report_eploye_id", :name => "report[eploye_id]"
      assert_select "input#report_subdivision_id", :name => "report[subdivision_id]"
      assert_select "input#report_organization_id", :name => "report[organization_id]"
      assert_select "input#report_hours", :name => "report[hours]"
      assert_select "input#report_description", :name => "report[description]"
    end
  end
end

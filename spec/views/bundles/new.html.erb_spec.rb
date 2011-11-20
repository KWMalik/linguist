require 'spec_helper'

describe "bundles/new.html.erb" do
  before(:each) do
    assign(:bundle, stub_model(Bundle,
      :name => "MyString",
      :project_id => 1
    ).as_new_record)
  end

  it "renders new bundle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bundles_path, :method => "post" do
      assert_select "input#bundle_name", :name => "bundle[name]"
      assert_select "input#bundle_project_id", :name => "bundle[project_id]"
    end
  end
end

require 'spec_helper'

describe "languages/index.html.erb" do
  before(:each) do
    assign(:languages, [
      stub_model(Language,
        :name => "Name",
        :iso => "Iso"
      ),
      stub_model(Language,
        :name => "Name",
        :iso => "Iso"
      )
    ])
  end

  it "renders a list of languages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Iso".to_s, :count => 2
  end
end

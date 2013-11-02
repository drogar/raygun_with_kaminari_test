require 'spec_helper'

describe "somethings/edit" do
  before(:each) do
    @something = assign(:something, build_stubbed(:something))
  end

  it "renders the edit something form" do
    render

    assert_select "form", action: somethings_path(@something), method: "post" do
      assert_select "input#something_name", name: "something[name]"
      assert_select "input#something_size", name: "something[size]"
    end
  end
end

require 'spec_helper'

describe "somethings/new" do
  before(:each) do
    assign(:something, build_stubbed(:something))
  end

  it "renders new something form" do
    render

    assert_select "form", action: somethings_path, method: "post" do
      assert_select "input#something_name", name: "something[name]"
      assert_select "input#something_size", name: "something[size]"
    end
  end
end


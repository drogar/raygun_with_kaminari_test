require 'spec_helper'

describe "somethings/show" do
  before(:each) do
    @something = assign(:something, build_stubbed(:something))
  end

  it "renders attributes" do
    render

    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end

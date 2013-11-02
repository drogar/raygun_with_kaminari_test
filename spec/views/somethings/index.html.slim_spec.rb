require 'spec_helper'

describe "somethings/index" do
  before(:each) do
    assign(:somethings, Kaminari.paginate_array([
      build_stubbed(:something,
        name: "Name",
        size: 1
      ),
      build_stubbed(:something,
        name: "Name",
        size: 1
      )
    ]).page(1))
  end

  it "renders a list of somethings" do
    render

    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 1.to_s, count: 2
  end
end

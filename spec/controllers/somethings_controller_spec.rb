require 'spec_helper'

describe SomethingsController do

  # This should return the minimal set of attributes required to create a valid
  # Something. As you add validations to Something, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    attributes_for :something
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SomethingsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  before do
    # TODO Set to :user and specify authorization rules in Ability.rb.
    # login_user build :admin
  end

  describe "#index" do
    it "assigns all somethings as @somethings" do
      something = Something.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:somethings)).to eq([something])
    end
    describe "pagination" do
      let(:parameters) {{}}
      it 'paginates for HTML' do
        Something.stub(:page)
        Something.should_receive(:page).and_call_original
        get :index, {}.merge(parameters), valid_session
      end
      # Uncomment test below if using JSON
      # it 'does not paginate JSON' do
      #   Something.stub(:page)
      #   Something.should_not_receive(:page)
      #   get :index, { format: :json }.merge(parameters), valid_session
      # end
    end
  end
  describe "#show" do
    it "assigns the requested something as @something" do
      something = Something.create! valid_attributes
      get :show, { :id => something.to_param }, valid_session
      expect(assigns(:something)).to eq(something)
    end
  end

  describe "#new" do
    it "assigns a new something as @something" do
      get :new, {}, valid_session
      expect(assigns(:something)).to be_a_new(Something)
    end
  end

  describe "#edit" do
    it "assigns the requested something as @something" do
      something = Something.create! valid_attributes
      get :edit, { :id => something.to_param }, valid_session
      expect(assigns(:something)).to eq(something)
    end
  end

  describe "#create" do
    describe "with valid params" do
      it "creates a new Something" do
        expect {
          post :create, { :something => valid_attributes }, valid_session
        }.to change(Something, :count).by(1)
      end

      it "assigns a newly created something as @something" do
        post :create, {:something => valid_attributes }, valid_session
        expect(assigns(:something)).to be_a(Something)
        expect(assigns(:something)).to be_persisted
      end

      it "redirects to the created something" do
        post :create, { :something => valid_attributes }, valid_session
        expect(response).to redirect_to(Something.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved something as @something" do
        # Trigger the behavior that occurs when invalid params are submitted
        Something.any_instance.stub(:save).and_return(false)
        post :create, { :something => { "name" => "invalid value" } }, valid_session
        expect(assigns(:something)).to be_a_new(Something)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Something.any_instance.stub(:save).and_return(false)
        post :create, { :something => { "name" => "invalid value" } }, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "#update" do
    describe "with valid params" do
      it "updates the requested something" do
        something = Something.create! valid_attributes
        # Assuming there are no other somethings in the database, this
        # specifies that the Something created on the previous line
        # receives the :update message with whatever params are submitted in
        # the request.
        Something.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, { :id => something.to_param, :something => { "name" => "MyString" } }, valid_session
      end

      it "assigns the requested something as @something" do
        something = Something.create! valid_attributes
        put :update, { :id => something.to_param, :something => valid_attributes }, valid_session
        expect(assigns(:something)).to eq(something)
      end

      it "redirects to the something" do
        something = Something.create! valid_attributes
        put :update, { :id => something.to_param, :something => valid_attributes }, valid_session
        expect(response).to redirect_to(something)
      end
    end

    describe "with invalid params" do
      it "assigns the something as @something" do
        something = Something.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Something.any_instance.stub(:save).and_return(false)
        put :update, { :id => something.to_param, :something => { "name" => "invalid value" } }, valid_session
        expect(assigns(:something)).to eq(something)
      end

      it "re-renders the 'edit' template" do
        something = Something.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Something.any_instance.stub(:save).and_return(false)
        put :update, { :id => something.to_param, :something => { "name" => "invalid value" } }, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "#destroy" do
    it "destroys the requested something" do
      something = Something.create! valid_attributes
      expect {
        delete :destroy, { :id => something.to_param }, valid_session
      }.to change(Something, :count).by(-1)
    end

    it "redirects to the somethings list" do
      something = Something.create! valid_attributes
      delete :destroy, { :id => something.to_param }, valid_session
      expect(response).to redirect_to(somethings_url)
    end
  end

end

require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe OfficialChallengesController do

  # This should return the minimal set of attributes required to create a valid
  # OfficialChallenge. As you add validations to OfficialChallenge, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "upload" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OfficialChallengesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all official_challenges as @official_challenges" do
      official_challenge = OfficialChallenge.create! valid_attributes
      get :index, {}, valid_session
      assigns(:official_challenges).should eq([official_challenge])
    end
  end

  describe "GET show" do
    it "assigns the requested official_challenge as @official_challenge" do
      official_challenge = OfficialChallenge.create! valid_attributes
      get :show, {:id => official_challenge.to_param}, valid_session
      assigns(:official_challenge).should eq(official_challenge)
    end
  end

  describe "GET new" do
    it "assigns a new official_challenge as @official_challenge" do
      get :new, {}, valid_session
      assigns(:official_challenge).should be_a_new(OfficialChallenge)
    end
  end

  describe "GET edit" do
    it "assigns the requested official_challenge as @official_challenge" do
      official_challenge = OfficialChallenge.create! valid_attributes
      get :edit, {:id => official_challenge.to_param}, valid_session
      assigns(:official_challenge).should eq(official_challenge)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new OfficialChallenge" do
        expect {
          post :create, {:official_challenge => valid_attributes}, valid_session
        }.to change(OfficialChallenge, :count).by(1)
      end

      it "assigns a newly created official_challenge as @official_challenge" do
        post :create, {:official_challenge => valid_attributes}, valid_session
        assigns(:official_challenge).should be_a(OfficialChallenge)
        assigns(:official_challenge).should be_persisted
      end

      it "redirects to the created official_challenge" do
        post :create, {:official_challenge => valid_attributes}, valid_session
        response.should redirect_to(OfficialChallenge.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved official_challenge as @official_challenge" do
        # Trigger the behavior that occurs when invalid params are submitted
        OfficialChallenge.any_instance.stub(:save).and_return(false)
        post :create, {:official_challenge => { "upload" => "invalid value" }}, valid_session
        assigns(:official_challenge).should be_a_new(OfficialChallenge)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        OfficialChallenge.any_instance.stub(:save).and_return(false)
        post :create, {:official_challenge => { "upload" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested official_challenge" do
        official_challenge = OfficialChallenge.create! valid_attributes
        # Assuming there are no other official_challenges in the database, this
        # specifies that the OfficialChallenge created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        OfficialChallenge.any_instance.should_receive(:update).with({ "upload" => "MyString" })
        put :update, {:id => official_challenge.to_param, :official_challenge => { "upload" => "MyString" }}, valid_session
      end

      it "assigns the requested official_challenge as @official_challenge" do
        official_challenge = OfficialChallenge.create! valid_attributes
        put :update, {:id => official_challenge.to_param, :official_challenge => valid_attributes}, valid_session
        assigns(:official_challenge).should eq(official_challenge)
      end

      it "redirects to the official_challenge" do
        official_challenge = OfficialChallenge.create! valid_attributes
        put :update, {:id => official_challenge.to_param, :official_challenge => valid_attributes}, valid_session
        response.should redirect_to(official_challenge)
      end
    end

    describe "with invalid params" do
      it "assigns the official_challenge as @official_challenge" do
        official_challenge = OfficialChallenge.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OfficialChallenge.any_instance.stub(:save).and_return(false)
        put :update, {:id => official_challenge.to_param, :official_challenge => { "upload" => "invalid value" }}, valid_session
        assigns(:official_challenge).should eq(official_challenge)
      end

      it "re-renders the 'edit' template" do
        official_challenge = OfficialChallenge.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OfficialChallenge.any_instance.stub(:save).and_return(false)
        put :update, {:id => official_challenge.to_param, :official_challenge => { "upload" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested official_challenge" do
      official_challenge = OfficialChallenge.create! valid_attributes
      expect {
        delete :destroy, {:id => official_challenge.to_param}, valid_session
      }.to change(OfficialChallenge, :count).by(-1)
    end

    it "redirects to the official_challenges list" do
      official_challenge = OfficialChallenge.create! valid_attributes
      delete :destroy, {:id => official_challenge.to_param}, valid_session
      response.should redirect_to(official_challenges_url)
    end
  end

end

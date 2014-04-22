require 'spec_helper'

describe DraftsController do

  let(:valid_attributes) { { :email => "sam@test.com", :share_option => "facebook" } }

  let(:valid_session) { {} }

  before :each do
    Letter.create(:content => "CONTENT")
  end


  describe "GET show" do
    it "assigns the requested draft as @draft" do
      
      draft = Draft.create! valid_attributes
      get :show, {:letter_id => 1, :id => draft.to_param}, valid_session
      assigns(:draft).should eq(draft)
    end
  end

  describe "GET new" do
    xit "assigns a new draft as @draft" do
      get :new, {:letter_id => 1}, valid_session
      assigns(:draft).should be_a_new(Draft)
    end
  end

  describe "GET edit" do
    xit "assigns the requested draft as @draft" do
      draft = Draft.create! valid_attributes
      get :edit, {:letter_id => 1, :id => draft.to_param}, valid_session
      assigns(:draft).should eq(draft)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new draft" do
        expect {
          post :create, {:letter_id => 1, :draft => valid_attributes}, valid_session
        }.to change(Draft, :count).by(1)
      end

      it "assigns a newly created draft as @draft" do
        post :create, {:letter_id => 1, :draft => valid_attributes}, valid_session
        assigns(:draft).should be_a(Draft)
        assigns(:draft).should be_persisted
      end

      it "redirects to the created draft's show page" do
        post :create, {:letter_id => 1, :draft => valid_attributes}, valid_session
        response.should redirect_to(letter_draft_path(Letter.last, Draft.last))
      end
    end

    describe "with invalid params" do
      xit "assigns a newly created but unsaved draft as @draft" do
        # Trigger the behavior that occurs when invalid params are submitted
        Draft.any_instance.stub(:save).and_return(false)
        post :create, {:letter_id => 1, :draft => { :variable_ordinal => 1, :variable_value => "whatever"  }}, valid_session
        assigns(:draft).should be_a_new(Draft)
      end

      xit "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Draft.any_instance.stub(:save).and_return(false)
        post :create, {:letter_id => 1, :draft => { :content => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      xit "updates the requested draft" do
        draft = Draft.create! valid_attributes
        # Assuming there are no other drafts in the database, this
        # specifies that the draft created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Draft.any_instance.should_receive(:update).with({ :content => "MyText" })
        put :update, {:letter_id => 1, :id => draft.to_param, :draft => { :content => "MyText" }}, valid_session
      end

      xit "assigns the requested draft as @draft" do
        draft = Draft.create! valid_attributes
        put :update, {:letter_id => 1, :id => draft.to_param, :draft => valid_attributes}, valid_session
        assigns(:draft).should eq(draft)
      end

      xit "redirects to the draft" do
        draft = Draft.create! valid_attributes
        put :update, {:letter_id => 1, :id => draft.to_param, :draft => valid_attributes}, valid_session
        response.should redirect_to(draft)
      end
    end

    describe "with invalid params" do
      xit "assigns the draft as @draft" do
        draft = Draft.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Draft.any_instance.stub(:save).and_return(false)
        put :update, {:letter_id => 1, :id => draft.to_param, :draft => { :content => "invalid value" }}, valid_session
        assigns(:draft).should eq(draft)
      end

      xit "re-renders the 'new' template" do
        draft = Draft.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Draft.any_instance.stub(:save).and_return(false)
        put :update, {:letter_id => 1, :id => draft.to_param, :draft => { :content => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end



end

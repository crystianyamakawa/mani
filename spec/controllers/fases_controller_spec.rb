require 'rails_helper'

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

RSpec.describe FasesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Fase. As you add validations to Fase, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FasesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all fases as @fases" do
      fase = Fase.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:fases)).to eq([fase])
    end
  end

  describe "GET #show" do
    it "assigns the requested fase as @fase" do
      fase = Fase.create! valid_attributes
      get :show, {:id => fase.to_param}, valid_session
      expect(assigns(:fase)).to eq(fase)
    end
  end

  describe "GET #new" do
    it "assigns a new fase as @fase" do
      get :new, {}, valid_session
      expect(assigns(:fase)).to be_a_new(Fase)
    end
  end

  describe "GET #edit" do
    it "assigns the requested fase as @fase" do
      fase = Fase.create! valid_attributes
      get :edit, {:id => fase.to_param}, valid_session
      expect(assigns(:fase)).to eq(fase)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Fase" do
        expect {
          post :create, {:fase => valid_attributes}, valid_session
        }.to change(Fase, :count).by(1)
      end

      it "assigns a newly created fase as @fase" do
        post :create, {:fase => valid_attributes}, valid_session
        expect(assigns(:fase)).to be_a(Fase)
        expect(assigns(:fase)).to be_persisted
      end

      it "redirects to the created fase" do
        post :create, {:fase => valid_attributes}, valid_session
        expect(response).to redirect_to(Fase.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved fase as @fase" do
        post :create, {:fase => invalid_attributes}, valid_session
        expect(assigns(:fase)).to be_a_new(Fase)
      end

      it "re-renders the 'new' template" do
        post :create, {:fase => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested fase" do
        fase = Fase.create! valid_attributes
        put :update, {:id => fase.to_param, :fase => new_attributes}, valid_session
        fase.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested fase as @fase" do
        fase = Fase.create! valid_attributes
        put :update, {:id => fase.to_param, :fase => valid_attributes}, valid_session
        expect(assigns(:fase)).to eq(fase)
      end

      it "redirects to the fase" do
        fase = Fase.create! valid_attributes
        put :update, {:id => fase.to_param, :fase => valid_attributes}, valid_session
        expect(response).to redirect_to(fase)
      end
    end

    context "with invalid params" do
      it "assigns the fase as @fase" do
        fase = Fase.create! valid_attributes
        put :update, {:id => fase.to_param, :fase => invalid_attributes}, valid_session
        expect(assigns(:fase)).to eq(fase)
      end

      it "re-renders the 'edit' template" do
        fase = Fase.create! valid_attributes
        put :update, {:id => fase.to_param, :fase => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested fase" do
      fase = Fase.create! valid_attributes
      expect {
        delete :destroy, {:id => fase.to_param}, valid_session
      }.to change(Fase, :count).by(-1)
    end

    it "redirects to the fases list" do
      fase = Fase.create! valid_attributes
      delete :destroy, {:id => fase.to_param}, valid_session
      expect(response).to redirect_to(fases_url)
    end
  end

end
require 'spec_helper'

describe RequestsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "assign errors" do
      get 'new'
      assigns(:errors).should == {}
    end
  end

  describe "POST 'create'" do
    before(:all) do
      @name = "Example Name"
      @email = "user_email@example.com"
      @select = "Example Select"
    end

    it "redirect to root" do
      post 'create', name: @name, email: @email, select: @select
      response.should redirect_to root_path
    end

    it "assign errors" do
      post 'create', name: @name, email: @email, select: ""
      assigns(:errors).should_not be_empty
    end

    it "render 'new'" do
      post 'create', name: @name, email: @email, select: ""
      response.should render_template(:new)
    end 

    it "sends a e-mail" do
      post 'create', name: @name, email: @email, select: @select      
      ActionMailer::Base.deliveries.last.to.should == ["user_email@example.com"]
    end
  end

end

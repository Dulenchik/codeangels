require "spec_helper"

describe RequestMailer do
  describe 'request_mail' do
    before(:all) do      
      @name = "Example Name"
      @email = "user_email@example.com"
      @select = "Example Select"
    end
    let(:mail) { RequestMailer.request_mail(@name, @email, @select) }

    it 'renders the subject' do
      mail.subject.should == 'New request'
    end
 
    it 'renders the receiver email' do
      mail.to.should == [@email]
    end
 
    it 'renders the sender email' do
      mail.from.should == ['example@example.com']
    end
 
    it 'assigns @name' do
      mail.body.encoded.should match(@name)
    end
 
    it 'assigns @email' do
      mail.body.encoded.should match(@email)
    end
 
    it 'assigns @select' do
      mail.body.encoded.should match(@select)
    end
  end
end
require 'spec_helper'

describe "chattin it up" do
  context "after posting a chat message", js: true do
    before(:each) do
      visit root_path
      fill_in "user_email", with: "test.user@lsqa.net"
      click_button "Go to Chat"
      fill_in "message_body", with: "testing 123"
      click_button "Send"
    end
    
    it "displays the chat message in the chat list" do
      within "#scroller" do
        page.should have_content "testing 123"
      end
    end
  end
end
And (/^I create a new server$/) do
    @pages.home.newServer.click
    @pages.home.createServer.click
end

When (/^I choose (.*) as the name for the server$/) do |server_name|
    @pages.home.enterServerName.send_keys(server_name)
    @pages.home.confirmServerCreation.click
    sleep 1
end 

When (/^I close popup and open server settings$/) do
    @pages.home.closeInvite.click
    @pages.home.openServerSettings.right_click
    @pages.home.confirmSettings.click
end

Then (/^I delete the server (.*) and confirm it$/) do |server_name|
    @pages.home.deleteButton.click
    @pages.home.deleteConfirm.send_keys(server_name)
    sleep 1
    @pages.home.finalDelete.click
end

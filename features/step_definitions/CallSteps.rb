And (/^I Start a (.*) Second Voice Call$/) do |test_time|
    @pages.home.voiceCallButton.click
    sleep test_time.to_i
    @pages.home.leaveCallButton.click
end

require_relative '../../features/pages/base'
# Login page class
class HomePage < BasePage
  attr_accessor :homeButton, :friendsTab, :friendTag, :voiceCallButton
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton 
  attr_accessor :logOutConfirm, :newServer, :createServer, :enterServerName, :confirmServerCreation
  attr_accessor :closeInvite, :openServerSettings, :confirmSettings, :deleteButton, :deleteConfirm
  attr_accessor :finalDelete

  def initialize

    @homeButton = Element.new(:css,"[aria-label='Home']")
    @friendsTab = Element.new(:xpath,"//div[text()='Friends']")
    @friendTag = Element.new(:css,"[aria-label='Edvards Bernāns']")
    @voiceCallButton = Element.new(:css,"[aria-label='Start Voice Call']")
    @leaveCallButton = Element.new(:xpath,"//*[text()='Leave Call']")
    @chatMessageInput = Element.new(:css,"textarea:first-of-type")
    @userSettings = Element.new(:css,"[aria-label='User Settings']")
    @logOutButton = Element.new(:xpath,"//div[text()='Log Out']")
    @logOutConfirm = Element.new(:xpath,"//button/div[text()='Log Out']")
    @newServer = Element.new(:css,"[aria-label='Add a Server']")
    @createServer = Element.new(:css,"[class='action-1lSjCi create-3jownz']")
    @enterServerName = Element.new(:css,"[maxlength='999']")
    @confirmServerCreation = Element.new(:css,"[type='submit']")
    @closeInvite = Element.new(:css,"[aria-label='Close']")
    @openServerSettings = Element.new(:css,"[class='acronym-2mOFsV selected-bZ3Lue']")
    @confirmSettings = Element.new(:css,"[class='item-1Yvehc itemSubMenu-1vN_Yn']")
    @deleteButton = Element.new(:css,"[style='color: rgb(240, 71, 71);']")
    @deleteConfirm = Element.new(:css,"[autocomplete='off']")
    @finalDelete = Element.new(:css,"[class='button-38aScr lookFilled-1Gx00P colorRed-1TFJan sizeMedium-1AC_Sl grow-q77ONN']")

  end

  def fill_form(user)
    @email.visible?
    @email.click
    @email.send_keys user['email']
    @password.click
    @password.send_keys user['password']
    @loginButton.click
  end

  def load_home_page
    visit ''
  end
end

#    @friendTag = Element.new(:xpath,"//span[text()='#']")

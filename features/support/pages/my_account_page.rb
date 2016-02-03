class MyAccountPage
  include PageObject
  div :flash_notice, id: 'flash_notice'
  link :logout, class: 'logout'

  def registered?
    flash_notice_element.when_visible.visible?
  end

  def logout
    logout_element.click if logout_element.visible?
  end
end




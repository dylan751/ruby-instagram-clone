module AccountsHelper
  
  def profile_picture account, width = 100, height = 100
    image_path = account.image.presence ? account.image.url : "placeholder-profile.png"
    image_tag(image_path, width: width, height: height, class: "img-circle m-r-10")
  end
  
  def can_edit_profile? profile_id
    account_signed_in? && current_account.id == profile_id
  end

end

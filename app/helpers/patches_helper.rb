module PatchesHelper
  def current_patch_user
    User.find(params[:user_id])
  end
end

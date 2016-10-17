class UserSerializer < ApplicationSerializer
  attributes :id, :first_name, :last_name #, :show
  attribute :email, if: :current_user
  attribute :edit_link, if: :current_user_is_owner
  has_many :phones

  # def show
  #   UsersController.render(:show, assigns: { user: object}, layout: false ).squish
  # end


  def edit_link
    edit_user_url(object)
  end

  def current_user_is_owner
    scope == object
  end
end

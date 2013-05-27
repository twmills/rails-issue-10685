class AdminConstraint
  def matches?(request)
    User.first.admin?
  end
end
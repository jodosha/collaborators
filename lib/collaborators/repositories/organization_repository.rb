class OrganizationRepository < Hanami::Repository
  def by_user(user)
    organizations.where(user_id: user.id).as(:entity).to_a
  end
end

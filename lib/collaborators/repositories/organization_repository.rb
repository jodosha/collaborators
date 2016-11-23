class OrganizationRepository < Hanami::Repository
  def by_user(user)
    organizations.where(user_id: user.id).as(:entity).to_a
  end

  def find_or_create(user, org)
    by_uid(org.id) ||
      create(
        user_id:     user.id,
        uid:         org.id,
        nickname:    org.login,
        avatar_url:  org.avatar_url,
        description: org.description
      )
  end

  def by_uid(uid)
    organizations.where(uid: uid).as(:entity).one
  end
end

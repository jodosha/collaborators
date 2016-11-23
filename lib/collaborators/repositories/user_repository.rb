class UserRepository < Hanami::Repository
  def find_or_create(authentication)
    by_uid(authentication['uid']) ||
      create(
        uid:        authentication['uid'],
        email:      authentication['info']['email'],
        avatar_url: authentication['info']['image'],
        name:       authentication['info']['name'],
        nickname:   authentication['info']['nickname'],
        token:      authentication['credentials']['token']
      )
  end

  private

  def by_uid(uid)
    users.where(uid: uid).as(:entity).one
  end
end

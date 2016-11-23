Warden::Strategies.add(:omniauth) do
  def authenticate!
    redirect!("/auth/github")
  end
end

Warden::Manager.serialize_into_session(&:id)
Warden::Manager.serialize_from_session { |id| UserRepository.new.find(id) }

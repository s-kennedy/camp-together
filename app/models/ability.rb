class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :manage, Profile, user_id: user.id
    can :manage, Trip, membership: { user_id: user.id, organizer: true }

    can :read, Trip
    can :read, Profile
  end
end

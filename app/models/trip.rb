class Trip < ApplicationRecord
  alias_attribute :participant, :user
  has_many :participants, class_name: 'User', through: :memberships, source: :user
  has_many :memberships

  def organizers
    participants.includes(:memberships).where(memberships: { organizer: true })
  end
end

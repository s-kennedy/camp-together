class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :trips, through: :memberships, source: :trip
  has_many :memberships

  def organized_trips
    trips.includes(:memberships).where(memberships: { organizer: true })
  end
end

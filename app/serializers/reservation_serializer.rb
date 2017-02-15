class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :dining_experience_id, :user, :date, :status
end

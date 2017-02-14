class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :dining_experience_id, :user_id, :date, :status
end

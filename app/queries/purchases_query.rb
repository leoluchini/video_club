# frozen_string_literal: true

class PurchasesQuery
  attr_reader :relation

  def initialize(relation = Purchase.includes(:film))
    @relation = relation
  end

  def libraries(user_id)
    relation.where(user_id: user_id)
            .where("created_at >= ?", Date.today - 2.days)
  end

  def exist?(user_id, film_id)
    libraries(user_id).where(film_id: film_id)
  end
end

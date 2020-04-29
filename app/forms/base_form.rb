# frozen_string_literal: true

class BaseForm
  include ActiveModel::Model

  validate :validate_models

  def save
    before_validation

    return false if invalid?

    after_validation

    save!

    true
  end

  def save!
    ActiveRecord::Base.transaction do
      before_save

      (models || []).map(&:save!)

      after_save
    end

    after_commit
  end

  def before_validation; end

  def before_save; end

  def after_validation; end

  def after_save; end

  def after_commit; end

  private

  attr_accessor :models

  def validate_models
    (models || []).each do |model|
      promote_errors(model) if model.invalid?
    end
  end

  def promote_errors(model)
    model.errors.each do |attribute, message|
      attribute = model.try(:normalize_attribute, attribute) || attribute
      errors.add(attribute, message)
    end
  end
end

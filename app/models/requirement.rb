class Requirement < ActiveRecord::Base

  belongs_to :mine

  belongs_to :genre
  belongs_to :classification
  belongs_to :ore
  belongs_to :rarity

  validates_presence_of :quantity

  def to_s
    [quantity, description].compact.join(' ')
  end

  def description_fields
    [rarity.to_s.capitalize, ore, classification, genre].compact
  end

  def description
    if description_fields.any?
      return description_fields.join(' ')
    else
      return "Any Item"
    end
  end

end
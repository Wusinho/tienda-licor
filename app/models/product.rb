class Product < ApplicationRecord
  belongs_to :category
  def self.search(params)
    name = params['name']
    where('name LIKE ?', "%#{name}%")
  end

  def self.selectCategory(category)
    where('category = ?', category)
  end

  def self.selectedRandomDiscount
    where('discount > 5').order('RAND()').limit(3)
  end
end

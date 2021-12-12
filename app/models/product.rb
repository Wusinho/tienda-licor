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

  def self.search(params)
    container = {}
    container['discount'] = params['discount']
    container['bebida_energetica'] = params['search'].slice((params['search'].index("=")+1)..-1)
    container['pisco'] = params['pisco']
    container['ron'] = params['ron']
    container['bebida'] = params['bebida']
    container['snack'] = params['snack']
    container['cerveza'] = params['cerveza']
    container['vodka'] = params['vodka']

    if container['discount'] == 'true'
      where('discount > 0')
    else
        

    end
  end

  def self.discount
    where('discount > 0')
  end
end

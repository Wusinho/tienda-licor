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
    container['bebida_energetica'] = params['search'].slice((params['search'].index("=")+1)..-1) == 'true' ? 1 : 'false'
    container['pisco'] = params['pisco'] == 'true' ? 2 : 'false'
    container['ron'] = params['ron'] == 'true' ? 3 : 'false'
    container['bebida'] = params['bebida'] == 'true' ? 4 : 'false'
    container['snack'] = params['snack'] == 'true' ? 5 : 'false'
    container['cerveza'] = params['cerveza'] == 'true' ? 6 : 'false'
    container['vodka'] = params['vodka'] == 'true' ? 7 : 'false'
    category_ids = []

    container.each do |key, val|
      category_ids << val if val.class == Integer
    end

    if container['discount'] != 'false' && (
      container['bebida_energetica'] !='false' ||
      container['pisco'] !='false'||
      container['ron'] !='false'||
      container['bebida'] !='false'||
      container['snack'] !='false'||
      container['cerveza'] !='false'||
      container['vodka'] !='false'
    )
      where('discount > 0 AND category_id IN (?)', category_ids)
    elsif (
      container['bebida_energetica'] !='false' ||
      container['pisco'] !='false'||
      container['ron'] !='false'||
      container['bebida'] !='false'||
      container['snack'] !='false'||
      container['cerveza'] !='false'||
      container['vodka'] !='false'
    )
    where(:category_id => category_ids)
    elsif container['discount'] != 'false'
      where('discount > 0')
    else
      return []
    end
    
  end

end

class Product < ApplicationRecord
  belongs_to :category

  def self.search(params)
    container = {}
    container['bebida_energetica'] = params['search'].slice((params['search'].index("=")+1)..-1) == 'true' ? 1 : 'false'
    container['pisco'] = params['pisco'] == 'true' ? 2 : 'false'
    container['ron'] = params['ron'] == 'true' ? 3 : 'false'
    container['bebida'] = params['bebida'] == 'true' ? 4 : 'false'
    container['snack'] = params['snack'] == 'true' ? 5 : 'false'
    container['cerveza'] = params['cerveza'] == 'true' ? 6 : 'false'
    container['vodka'] = params['vodka'] == 'true' ? 7 : 'false'
    container['name'] = params['name']
    category_ids = []
    container.each do |key, val|
      category_ids << val if val.class == Integer
    end
    container['price'] = params['price'].to_i * 1000
    container['discount'] = params['discount']

    if container['name'] != ''
      where("name ILIKE ? AND price <= ? ",  "%#{container['name']}%", container['price'])
    elsif container['discount'] != 'false' && (
      container['bebida_energetica'] !='false' ||
      container['pisco'] !='false'||
      container['ron'] !='false'||
      container['bebida'] !='false'||
      container['snack'] !='false'||
      container['cerveza'] !='false'||
      container['vodka'] !='false'
    )
      where('discount > 0 AND price <= (?) AND category_id IN (?)', container['price'], category_ids)
    elsif (
      container['bebida_energetica'] !='false' ||
      container['pisco'] !='false'||
      container['ron'] !='false'||
      container['bebida'] !='false'||
      container['snack'] !='false'||
      container['cerveza'] !='false'||
      container['vodka'] !='false'
    )
      where('price <= (?) AND category_id IN (?)', container['price'], category_ids)
    elsif container['discount'] != 'false'
      where('discount > 0 AND price <= (?)', container['price'])
    else
      return []
    end
    
  end

end

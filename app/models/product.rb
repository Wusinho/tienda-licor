class Product < ApplicationRecord
  belongs_to :category

  def self.filter(price, discount)
    return [] unless price.to_i
    real_price = price.to_i * 1000
    
      discount == 'false' ? where('discount = 0 AND price <= ?', real_price) : where('discount > 0 AND price <= ?', real_price)

  end

  def self.search(category,name)

    params = {
      name: name,
      categories: category && category.split(',').map {|ele| ele.to_i},
    }

      if params[:name] 
        #name and cat
          return where("name ILIKE ? AND category_id In (?) ",  "%#{params[:name]}%", params[:categories]) if params[:categories]

        #only name
        where("name ILIKE ? ",  "%#{params[:name]}%")

        #search only by cat
        else 
          where('category_id In (?)', params[:categories])
      end
  end

end

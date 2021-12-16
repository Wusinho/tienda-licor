class Product < ApplicationRecord
  belongs_to :category

  def self.search_name(name)
    where('name ILIKE ?', "%#{name}%") 
  end

  def self.filter(cid)
    where('category_id = ?', cid)
  end

  def self.search(category,name,discount,price)

    params = {
      name: name,
      categories: category && category.split(',').map {|ele| ele.to_i},
      disc: discount == 'false' ? false : true,
      price: price.to_i * 1000
    }

    #with discount
    if params[:disc]
   # name and price
      if params[:name] && params[:categories]
        where("discount > 0 AND name ILIKE ? AND price <= ? AND category_id In (?) ",  "%#{params[:name]}%", params[:price], params[:categories])
    #search only by name
      elsif params[:name]
        where("discount > 0 AND name ILIKE ? AND price <= ? ",  "%#{params[:name]}%", params[:price])
    #search only by cat
      elsif params[:categories]
        where('discount > 0 AND price <= ? AND category_id In (?)', params[:price], params[:categories])
      else
        return []
      end

    #no discount
    else

   # name and price
      if params[:name] && params[:categories] 
        where("discount = 0 AND name ILIKE ? AND price <= ? AND category_id In (?) ",  "%#{params[:name]}%", params[:price], params[:categories])
    #search only by name
      elsif params[:name]

        where("discount = 0 AND name ILIKE ? AND price <= ? ",  "%#{params[:name]}%", params[:price])
    #search only by cat
      elsif params[:categories]
        where('discount = 0 AND price <= ? AND category_id In (?)' , params[:price], params[:categories])
      else
        return []
      end

    end
    
  


  end

end

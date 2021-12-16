class Product < ApplicationRecord
  belongs_to :category

  def self.search(category,name,discount,price)

    params = {
      name: name,
      categories: category && category.split(',').map {|ele| ele.to_i},
      disc: discount == 'false' ? false : true,
      price: price.to_i * 1000
    }

    #with discount
    if params[:disc]
   # name 
      if params[:name] 
        
        #name and cat
        if params[:categories]
          where("discount > 0 AND name ILIKE ? AND price <= ? AND category_id In (?) ",  "%#{params[:name]}%", params[:price], params[:categories])
        end

        #only name
        where("discount > 0 AND name ILIKE ? AND price <= ? ",  "%#{params[:name]}%", params[:price])

    #search only by cat
      elsif params[:categories]
        where('discount > 0 AND price <= ? AND category_id In (?)', params[:price], params[:categories])
    #only price
      else
        where('discount > 0 AND price <= ? ', params[:price])
      end

    #no discount
    else
   # name 
      if params[:name] 
        
        #name and cat
        if params[:categories] 
          where("discount = 0 AND name ILIKE ? AND price <= ? AND category_id In (?) ",  "%#{params[:name]}%", params[:price], params[:categories])
        end
        
        # only name
        where("discount = 0 AND name ILIKE ? AND price <= ? ",  "%#{params[:name]}%", params[:price])

    #search only by cat
      elsif params[:categories]
        where('discount = 0 AND price <= ? AND category_id In (?)' , params[:price], params[:categories])
    #only price
      else
        where('discount = 0 AND price <= ? ', params[:price])
      end
    end
  end

end

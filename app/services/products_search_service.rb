class ProductsSearchService
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
      Products.where('discount > 0')
    else
        

    end



  end
end
module Spree
  class PagesController < StoreController
    
    def show
      
      @page=Spree::Page.where(slug: request.path[1..-1]).first
      if @page.nil? || !@page.published
        error_404
      else 
        render "/pages/templates/#{@page.template}"
      end
    end
    
  end
end

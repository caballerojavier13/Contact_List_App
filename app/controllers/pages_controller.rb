class PagesController < ApplicationController
  def home
  	@contacts = Contact.all
  end

  def search
  	@query = params[:query]
  	search_query = "%#{@query}%"
  	@contacts = Contact.where('first_name LIKE ? OR last_name LIKE ?', search_query, search_query)
  end
end

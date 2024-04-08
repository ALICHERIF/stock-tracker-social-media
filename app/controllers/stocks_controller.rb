class StocksController < ApplicationController
 before_action :set_stock, only: [:search]

def search
   if @stock
     respond_to do |format|
       format.turbo do
         render partial: 'users/result'
       end
     end
   else
     respond_to do |format|
       format.turbo do
         render partial: 'invalid_symbol'
       end
     end
   end
 end

private

 def set_stock
   return unless params[:stock].present?
   @stock = Stock.new_lookup(params[:stock])
 end

end

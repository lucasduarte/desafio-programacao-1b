class VendasController < ApplicationController
  def index
  	@vendas = Venda.all
  end

  def upload
  	data_array = File.readlines(params[:data].tempfile)		

		@vendas = Venda.bulk_insert(data_array)
		redirect_to action: "index"
  end
end

class PurchasesController < ApplicationController
	def index
	end

	def upload
		data_array = File.readlines(params[:data].tempfile)
		Purchase.bulk_insert(data_array)
	end
end

class Venda < ApplicationRecord
	
	def self.total_value
		sum('preco_unitario * quantidade')
	end
	
	def self.bulk_insert(data_array)
		
		field_names = data_array
										.shift
										.chomp
										
		columns = normalize_columns_name(field_names)
								.downcase
								.gsub(' ', '_')
								.split(/\t/)		
								
		data_array.each do |item| 
			venda = Venda.new	
			item.chomp.split(/\t/).each_with_index do |value, index|
				venda[columns[index]] = value
			end

			venda.save
		end
	end

	def self.normalize_columns_name(columns)
		ActiveSupport::Inflector.transliterate(columns).to_s
	end
end

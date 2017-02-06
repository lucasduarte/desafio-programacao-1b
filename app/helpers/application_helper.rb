module ApplicationHelper
    def converte_reais(numero)
      number_to_currency(numero, unit: 'R$ ', separator: ',')
    end
end

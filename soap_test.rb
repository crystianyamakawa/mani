require 'savon'

#client = Savon.client(wsdl: "http://www.webservicex.net/uszip.asmx?WSDL")
#puts "Mostrar Operações"

#puts client.operations
#puts "\n"

#resposta = client.call(:get_info_by_zip, message:{"USZip" => "22102"})

#puts resposta.body

#respostatxt = resposta.body[:get_info_by_zip_response][:get_info_by_zip_result]

#puts respostatxt
require 'net/http'
result = Net::HTTP.get(URI.parse("http://webservice.kinghost.net/web_cep.php?auth=f3d913d76868c336f63d34b7302581ce&formato=xml&cep=87709-330"))

puts result

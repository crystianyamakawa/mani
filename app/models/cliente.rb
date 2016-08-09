class Cliente < ActiveRecord::Base
  usar_como_cpf  :nr_cpf
  usar_como_cnpj :nr_cnpj

end

class Pagamento < ActiveRecord::Base
  belongs_to :cadastro
  has_one :info_pagamento

  accepts_nested_attributes_for :info_pagamento
  validates_associated :info_pagamento
end

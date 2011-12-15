class Incident < ActiveRecord::Base
  validates_presence_of :tipo, :descricao, :estado
  
  TIPOS     = ['Service Request', 'HD', 'Virus', 'Monitor', 'Outro']
  PRIORITYS = ['Alta','Media','Baixa']
  ESTADOS   = ['Help-desk','Administracao','Tecnicos','Fechado']
  
end

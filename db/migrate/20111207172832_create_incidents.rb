class CreateIncidents < ActiveRecord::Migration
  def self.up
    create_table :incidents do |t|
      t.string :tipo
      t.string :descricao
      t.string :solucao
      t.string :prioridade
      t.string :estado

      t.timestamps
    end
  end

  def self.down
    drop_table :incidents
  end
end

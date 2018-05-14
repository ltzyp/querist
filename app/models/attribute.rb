class Attribute < ApplicationRecord
  belongs_to :relation, class_name: 'Relation', foreign_key: :attrelid

  def self.table_name
    'pg_attribute'
  end
end

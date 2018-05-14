class Relation < ApplicationRecord
  validates :oid, presence: true
  has_many  :columns, foreign_key: :attrelid , class_name: 'Attribute' 

  def self.table_name
    'pg_v_class'
  end

  def self.primary_key
    :oid
  end
end

class Index < ApplicationRecord

  def self.table_name
    'pg_index'
  end

  def readonly
    true
  end
end


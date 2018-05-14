class CreateViews < ActiveRecord::Migration[5.1]
  def change
    c = ActiveRecord::Base.connection
    c.execute 'create view pg_v_class as select oid,* from pg_class'
 #   c.execute 'create view pg_v_attribute as select oid,* from pg_attribute'
  end
end

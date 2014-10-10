class AddHexToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :hex, :string
  end
end

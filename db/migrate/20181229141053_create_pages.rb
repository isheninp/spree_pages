class CreatePages < SpreeExtension::Migration[5.2]
  def change
    create_table :spree_pages do |t|
      t.boolean :published, default: false
      t.string :title
      t.string :template, default: 'default'
      t.string :body
      t.string :slug
      t.integer :position
      t.string :meta_description
      t.string :meta_title

      t.timestamps
    end
  end
end

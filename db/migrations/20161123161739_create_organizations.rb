Hanami::Model.migration do
  change do
    create_table :organizations do
      primary_key :id
      foreign_key :user_id, :users, on_delete: :cascade, null: false

      column :uid,         Integer,  null: false, unique: true
      column :nickname,    String,   null: false, unique: true
      column :avatar_url,  String,   null: false
      column :description, String,   null: false
      column :created_at,  DateTime, null: false
      column :updated_at,  DateTime, null: false
    end
  end
end

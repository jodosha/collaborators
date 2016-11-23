Hanami::Model.migration do
  change do
    create_table :users do
      primary_key :id

      column :uid,        Integer,  null: false, unique: true
      column :email,      String,   null: false, unique: true
      column :nickname,   String,   null: false, unique: true
      column :token,      String,   null: false, unique: true
      column :name,       String,   null: false
      column :avatar_url, String,   null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

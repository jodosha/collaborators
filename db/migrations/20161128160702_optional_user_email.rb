Hanami::Model.migration do
  change do
    alter_table :users do
      set_column_allow_null :email
    end
  end
end

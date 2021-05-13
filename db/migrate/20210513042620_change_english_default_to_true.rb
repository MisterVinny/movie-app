class ChangeEnglishDefaultToTrue < ActiveRecord::Migration[6.1]
  def change
    change_column_default :movies, :english, from: false, to: true
  end
end

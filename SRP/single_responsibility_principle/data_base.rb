require 'sqlite3'
require 'sequel'

class DataBase
  attr_reader :data_base

  def initialize
    @data_base = connection
  end

  def connection
    db = Sequel.sqlite
    db.create_table :employees do
      primary_key :id
      String :full_name
      String :birthdate
      Float :salary
    end
    db[:employees]
  end

  def save
    @data_base.insert(
      :full_name => @full_name,
      :birthdate => @birthdate,
      :salary => @salary
    )

    result = @data_base.all
    result.last
  end

  def get_employee(id)
    @data_base.where(id: id).first
  end
end

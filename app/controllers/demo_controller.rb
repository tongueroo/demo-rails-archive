class DemoController < ApplicationController
  def index
    @tables = ActiveRecord::Base.connection.tables
    @db_version = db_version
    @db_adapter = ActiveRecord::Base::connection.class
  end

  private
  def db_version
    case ActiveRecord::Base::connection
    when ActiveRecord::ConnectionAdapters::SQLite3Adapter
      ActiveRecord::Base.connection.select_value('SELECT sqlite_version()') # works for sqlite
    else
      # https://makandracards.com/makandra/42104-rails-how-to-get-postgresql-version-being-used
      ActiveRecord::Base.connection.select_value('SELECT version()') # works for postgresql
    end
  end
end

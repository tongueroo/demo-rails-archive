class DemoController < ApplicationController
  def index
    @tables = ActiveRecord::Base.connection.tables
    @db_version = db_version
  end

  private
  def db_version
    # https://makandracards.com/makandra/42104-rails-how-to-get-postgresql-version-being-used
    ActiveRecord::Base.connection.select_value('SELECT version()')
  end
end

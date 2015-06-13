class MiscController < ApplicationController

  def cleandb
    ActiveRecord::Base.connection.execute("delete from shops")
  end

end

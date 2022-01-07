class DemoController < ApplicationController
  def index
  end

  def show
  end

  def error
    DoesntExist.do_something
  end
end

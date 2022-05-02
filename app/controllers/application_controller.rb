class ApplicationController < ActionController::Base
  def hello
    render html: 'Hello, amazing world!'
  end
end
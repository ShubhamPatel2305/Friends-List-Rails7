class HomeController < ApplicationController
  def index
    @text="Hello world"
    @sum= 2+2       #we use @ cause we need instance variables and we will be using these in view so it can;t be local varialbles
  end
end

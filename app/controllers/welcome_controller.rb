class WelcomeController < ApplicationController

  def index
    @patches = Patch.all
  end
end

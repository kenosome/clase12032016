class PersonaController < ApplicationController
  def index
    @personas=Persona.all

  end
end

class Education < ActiveRecord::Base
  def self.Eucation_Levels
    ["Primaria", "Secundaria", "Tecnico", "Universidad", "Otros"]
  end
end

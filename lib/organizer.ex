defmodule Organizer do

  def create_participants(neihborhood) do
    ids = Range.new(1, Enum.count(neihborhood))
    ids |>
    Enum.map(&(spawn(Participant, :new, [&1, ids |> Enum.at(&1 - 1)])))
  end

end

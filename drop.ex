defmodule Drop do
  @moduledoc """
  Functions calculating velocities achived by objects dropped in a vaccum.
  """
  @vsn 0.1

  @doc """
  Calculates the velocity of an object falling on as if
  it were in a vacuum (no air resistance). The distance is
  the height from which the object falls, specified in meters,
  ant the function return sa velocity in meters per second.
  """

  @spec fall_velocity(number()) :: number()

  import :math, only: [sqrt: 1]

  def fall_velocity(distance, gravity \\ 9.8) do
    sqrt(2 * gravity * distance)
  end

end

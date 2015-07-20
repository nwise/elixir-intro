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

  import :math, only: [sqrt: 1]

  def fall_velocity(:earth, distance) when distance >= 0 do
    sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) when distance >= 0 do
    sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) when distance >= 0 do
    sqrt(2 * 3.71 * distance)
  end

end

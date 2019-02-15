defmodule ConfexSampleTest do
  use ExUnit.Case
  doctest ConfexSample

  test "Application.get_env & Confex.get_env difference" do
    app_conf = Application.get_env(:confex_sample, :example)
    confex_conf = Confex.get_env(:confex_sample, :example)

    assert app_conf === confex_conf
  end
end

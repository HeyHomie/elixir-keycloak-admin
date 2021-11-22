# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.SynchronizationResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"added",
    :"failed",
    :"ignored",
    :"removed",
    :"status",
    :"updated"
  ]

  @type t :: %__MODULE__{
    :"added" => integer() | nil,
    :"failed" => integer() | nil,
    :"ignored" => boolean() | nil,
    :"removed" => integer() | nil,
    :"status" => String.t | nil,
    :"updated" => integer() | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.SynchronizationResult do
  def decode(value, _options) do
    value
  end
end


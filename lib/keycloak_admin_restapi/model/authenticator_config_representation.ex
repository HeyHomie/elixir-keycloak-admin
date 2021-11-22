# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.AuthenticatorConfigRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"alias",
    :"config",
    :"id"
  ]

  @type t :: %__MODULE__{
    :"alias" => String.t | nil,
    :"config" => %{optional(String.t) => map()} | nil,
    :"id" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.AuthenticatorConfigRepresentation do
  def decode(value, _options) do
    value
  end
end


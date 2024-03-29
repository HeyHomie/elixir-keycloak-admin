# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.AddressClaimSet do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"country",
    :"formatted",
    :"locality",
    :"postal_code",
    :"region",
    :"street_address"
  ]

  @type t :: %__MODULE__{
    :"country" => String.t | nil,
    :"formatted" => String.t | nil,
    :"locality" => String.t | nil,
    :"postal_code" => String.t | nil,
    :"region" => String.t | nil,
    :"street_address" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.AddressClaimSet do
  def decode(value, _options) do
    value
  end
end


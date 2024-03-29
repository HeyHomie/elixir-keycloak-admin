# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.AuthenticatorConfigInfoRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"helpText",
    :"name",
    :"properties",
    :"providerId"
  ]

  @type t :: %__MODULE__{
    :"helpText" => String.t | nil,
    :"name" => String.t | nil,
    :"properties" => [KeycloakAdminRESTAPI.Model.ConfigPropertyRepresentation.t] | nil,
    :"providerId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.AuthenticatorConfigInfoRepresentation do
  import KeycloakAdminRESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :list, KeycloakAdminRESTAPI.Model.ConfigPropertyRepresentation, options)
  end
end


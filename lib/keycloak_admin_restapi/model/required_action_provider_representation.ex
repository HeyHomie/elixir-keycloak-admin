# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.RequiredActionProviderRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"alias",
    :"config",
    :"defaultAction",
    :"enabled",
    :"name",
    :"priority",
    :"providerId"
  ]

  @type t :: %__MODULE__{
    :"alias" => String.t | nil,
    :"config" => %{optional(String.t) => map()} | nil,
    :"defaultAction" => boolean() | nil,
    :"enabled" => boolean() | nil,
    :"name" => String.t | nil,
    :"priority" => integer() | nil,
    :"providerId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.RequiredActionProviderRepresentation do
  def decode(value, _options) do
    value
  end
end


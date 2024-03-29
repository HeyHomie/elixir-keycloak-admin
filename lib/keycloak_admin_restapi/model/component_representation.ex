# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.ComponentRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"config",
    :"id",
    :"name",
    :"parentId",
    :"providerId",
    :"providerType",
    :"subType"
  ]

  @type t :: %__MODULE__{
    :"config" => KeycloakAdminRESTAPI.Model.MultivaluedHashMap.t | nil,
    :"id" => String.t | nil,
    :"name" => String.t | nil,
    :"parentId" => String.t | nil,
    :"providerId" => String.t | nil,
    :"providerType" => String.t | nil,
    :"subType" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.ComponentRepresentation do
  import KeycloakAdminRESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"config", :struct, KeycloakAdminRESTAPI.Model.MultivaluedHashMap, options)
  end
end


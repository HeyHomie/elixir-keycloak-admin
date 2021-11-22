# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.ScopeRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayName",
    :"iconUri",
    :"id",
    :"name",
    :"policies",
    :"resources"
  ]

  @type t :: %__MODULE__{
    :"displayName" => String.t | nil,
    :"iconUri" => String.t | nil,
    :"id" => String.t | nil,
    :"name" => String.t | nil,
    :"policies" => [KeycloakAdminRESTAPI.Model.PolicyRepresentation.t] | nil,
    :"resources" => [KeycloakAdminRESTAPI.Model.ResourceRepresentation.t] | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.ScopeRepresentation do
  import KeycloakAdminRESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"policies", :list, KeycloakAdminRESTAPI.Model.PolicyRepresentation, options)
    |> deserialize(:"resources", :list, KeycloakAdminRESTAPI.Model.ResourceRepresentation, options)
  end
end

# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.PartialImportRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"clients",
    :"groups",
    :"identityProviders",
    :"ifResourceExists",
    :"policy",
    :"roles",
    :"users"
  ]

  @type t :: %__MODULE__{
    :"clients" => [KeycloakAdminRESTAPI.Model.ClientRepresentation.t] | nil,
    :"groups" => [KeycloakAdminRESTAPI.Model.GroupRepresentation.t] | nil,
    :"identityProviders" => [KeycloakAdminRESTAPI.Model.IdentityProviderRepresentation.t] | nil,
    :"ifResourceExists" => String.t | nil,
    :"policy" => String.t | nil,
    :"roles" => KeycloakAdminRESTAPI.Model.RolesRepresentation.t | nil,
    :"users" => [KeycloakAdminRESTAPI.Model.UserRepresentation.t] | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.PartialImportRepresentation do
  import KeycloakAdminRESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"clients", :list, KeycloakAdminRESTAPI.Model.ClientRepresentation, options)
    |> deserialize(:"groups", :list, KeycloakAdminRESTAPI.Model.GroupRepresentation, options)
    |> deserialize(:"identityProviders", :list, KeycloakAdminRESTAPI.Model.IdentityProviderRepresentation, options)
    |> deserialize(:"roles", :struct, KeycloakAdminRESTAPI.Model.RolesRepresentation, options)
    |> deserialize(:"users", :list, KeycloakAdminRESTAPI.Model.UserRepresentation, options)
  end
end


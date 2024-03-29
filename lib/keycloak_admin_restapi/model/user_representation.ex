# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.UserRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"access",
    :"attributes",
    :"clientConsents",
    :"clientRoles",
    :"createdTimestamp",
    :"credentials",
    :"disableableCredentialTypes",
    :"email",
    :"emailVerified",
    :"enabled",
    :"federatedIdentities",
    :"federationLink",
    :"firstName",
    :"groups",
    :"id",
    :"lastName",
    :"notBefore",
    :"origin",
    :"realmRoles",
    :"requiredActions",
    :"self",
    :"serviceAccountClientId",
    :"username"
  ]

  @type t :: %__MODULE__{
    :"access" => %{optional(String.t) => map()} | nil,
    :"attributes" => %{optional(String.t) => map()} | nil,
    :"clientConsents" => [KeycloakAdminRESTAPI.Model.UserConsentRepresentation.t] | nil,
    :"clientRoles" => %{optional(String.t) => map()} | nil,
    :"createdTimestamp" => integer() | nil,
    :"credentials" => [KeycloakAdminRESTAPI.Model.CredentialRepresentation.t] | nil,
    :"disableableCredentialTypes" => [String.t] | nil,
    :"email" => String.t | nil,
    :"emailVerified" => boolean() | nil,
    :"enabled" => boolean() | nil,
    :"federatedIdentities" => [KeycloakAdminRESTAPI.Model.FederatedIdentityRepresentation.t] | nil,
    :"federationLink" => String.t | nil,
    :"firstName" => String.t | nil,
    :"groups" => [String.t] | nil,
    :"id" => String.t | nil,
    :"lastName" => String.t | nil,
    :"notBefore" => integer() | nil,
    :"origin" => String.t | nil,
    :"realmRoles" => [String.t] | nil,
    :"requiredActions" => [String.t] | nil,
    :"self" => String.t | nil,
    :"serviceAccountClientId" => String.t | nil,
    :"username" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.UserRepresentation do
  import KeycloakAdminRESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"clientConsents", :list, KeycloakAdminRESTAPI.Model.UserConsentRepresentation, options)
    |> deserialize(:"credentials", :list, KeycloakAdminRESTAPI.Model.CredentialRepresentation, options)
    |> deserialize(:"federatedIdentities", :list, KeycloakAdminRESTAPI.Model.FederatedIdentityRepresentation, options)
  end
end


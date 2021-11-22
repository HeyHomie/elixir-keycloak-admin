# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.AccessToken do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"acr",
    :"address",
    :"allowed-origins",
    :"at_hash",
    :"auth_time",
    :"authorization",
    :"azp",
    :"birthdate",
    :"c_hash",
    :"category",
    :"claims_locales",
    :"cnf",
    :"email",
    :"email_verified",
    :"exp",
    :"family_name",
    :"gender",
    :"given_name",
    :"iat",
    :"iss",
    :"jti",
    :"locale",
    :"middle_name",
    :"name",
    :"nbf",
    :"nickname",
    :"nonce",
    :"otherClaims",
    :"phone_number",
    :"phone_number_verified",
    :"picture",
    :"preferred_username",
    :"profile",
    :"realm_access",
    :"s_hash",
    :"scope",
    :"session_state",
    :"sid",
    :"sub",
    :"trusted-certs",
    :"typ",
    :"updated_at",
    :"website",
    :"zoneinfo"
  ]

  @type t :: %__MODULE__{
    :"acr" => String.t | nil,
    :"address" => KeycloakAdminRESTAPI.Model.AddressClaimSet.t | nil,
    :"allowed-origins" => [String.t] | nil,
    :"at_hash" => String.t | nil,
    :"auth_time" => integer() | nil,
    :"authorization" => KeycloakAdminRESTAPI.Model.AccessTokenAuthorization.t | nil,
    :"azp" => String.t | nil,
    :"birthdate" => String.t | nil,
    :"c_hash" => String.t | nil,
    :"category" => String.t | nil,
    :"claims_locales" => String.t | nil,
    :"cnf" => KeycloakAdminRESTAPI.Model.AccessTokenCertConf.t | nil,
    :"email" => String.t | nil,
    :"email_verified" => boolean() | nil,
    :"exp" => integer() | nil,
    :"family_name" => String.t | nil,
    :"gender" => String.t | nil,
    :"given_name" => String.t | nil,
    :"iat" => integer() | nil,
    :"iss" => String.t | nil,
    :"jti" => String.t | nil,
    :"locale" => String.t | nil,
    :"middle_name" => String.t | nil,
    :"name" => String.t | nil,
    :"nbf" => integer() | nil,
    :"nickname" => String.t | nil,
    :"nonce" => String.t | nil,
    :"otherClaims" => %{optional(String.t) => map()} | nil,
    :"phone_number" => String.t | nil,
    :"phone_number_verified" => boolean() | nil,
    :"picture" => String.t | nil,
    :"preferred_username" => String.t | nil,
    :"profile" => String.t | nil,
    :"realm_access" => KeycloakAdminRESTAPI.Model.AccessTokenAccess.t | nil,
    :"s_hash" => String.t | nil,
    :"scope" => String.t | nil,
    :"session_state" => String.t | nil,
    :"sid" => String.t | nil,
    :"sub" => String.t | nil,
    :"trusted-certs" => [String.t] | nil,
    :"typ" => String.t | nil,
    :"updated_at" => integer() | nil,
    :"website" => String.t | nil,
    :"zoneinfo" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.AccessToken do
  import KeycloakAdminRESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"address", :struct, KeycloakAdminRESTAPI.Model.AddressClaimSet, options)
    |> deserialize(:"authorization", :struct, KeycloakAdminRESTAPI.Model.AccessTokenAuthorization, options)
    |> deserialize(:"cnf", :struct, KeycloakAdminRESTAPI.Model.AccessTokenCertConf, options)
    |> deserialize(:"realm_access", :struct, KeycloakAdminRESTAPI.Model.AccessTokenAccess, options)
  end
end

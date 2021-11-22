# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.KeyStoreConfig do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"format",
    :"keyAlias",
    :"keyPassword",
    :"realmAlias",
    :"realmCertificate",
    :"storePassword"
  ]

  @type t :: %__MODULE__{
    :"format" => String.t | nil,
    :"keyAlias" => String.t | nil,
    :"keyPassword" => String.t | nil,
    :"realmAlias" => String.t | nil,
    :"realmCertificate" => boolean() | nil,
    :"storePassword" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.KeyStoreConfig do
  def decode(value, _options) do
    value
  end
end

# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.UserConsentRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"clientId",
    :"createdDate",
    :"grantedClientScopes",
    :"lastUpdatedDate"
  ]

  @type t :: %__MODULE__{
    :"clientId" => String.t | nil,
    :"createdDate" => integer() | nil,
    :"grantedClientScopes" => [String.t] | nil,
    :"lastUpdatedDate" => integer() | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.UserConsentRepresentation do
  def decode(value, _options) do
    value
  end
end


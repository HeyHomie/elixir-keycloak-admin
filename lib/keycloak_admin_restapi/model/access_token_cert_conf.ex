# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.AccessTokenCertConf do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"x5t#S256"
  ]

  @type t :: %__MODULE__{
    :"x5t#S256" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.AccessTokenCertConf do
  def decode(value, _options) do
    value
  end
end


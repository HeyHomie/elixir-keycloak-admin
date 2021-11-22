# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.PasswordPolicyTypeRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"configType",
    :"defaultValue",
    :"displayName",
    :"id",
    :"multipleSupported"
  ]

  @type t :: %__MODULE__{
    :"configType" => String.t | nil,
    :"defaultValue" => String.t | nil,
    :"displayName" => String.t | nil,
    :"id" => String.t | nil,
    :"multipleSupported" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.PasswordPolicyTypeRepresentation do
  def decode(value, _options) do
    value
  end
end

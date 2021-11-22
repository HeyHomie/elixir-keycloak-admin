# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.ClientPolicyConditionRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"condition",
    :"configuration"
  ]

  @type t :: %__MODULE__{
    :"condition" => String.t | nil,
    :"configuration" => KeycloakAdminRESTAPI.Model.JsonNode.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.ClientPolicyConditionRepresentation do
  import KeycloakAdminRESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"configuration", :struct, KeycloakAdminRESTAPI.Model.JsonNode, options)
  end
end


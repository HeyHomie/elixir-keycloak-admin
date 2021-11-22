# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.ClientScopeEvaluateResourceProtocolMapperEvaluationRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"containerId",
    :"containerName",
    :"containerType",
    :"mapperId",
    :"mapperName",
    :"protocolMapper"
  ]

  @type t :: %__MODULE__{
    :"containerId" => String.t | nil,
    :"containerName" => String.t | nil,
    :"containerType" => String.t | nil,
    :"mapperId" => String.t | nil,
    :"mapperName" => String.t | nil,
    :"protocolMapper" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.ClientScopeEvaluateResourceProtocolMapperEvaluationRepresentation do
  def decode(value, _options) do
    value
  end
end


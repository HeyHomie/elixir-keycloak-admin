# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.ClientProfileRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"description",
    :"executors",
    :"name"
  ]

  @type t :: %__MODULE__{
    :"description" => String.t | nil,
    :"executors" => [KeycloakAdminRESTAPI.Model.ClientPolicyExecutorRepresentation.t] | nil,
    :"name" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.ClientProfileRepresentation do
  import KeycloakAdminRESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"executors", :list, KeycloakAdminRESTAPI.Model.ClientPolicyExecutorRepresentation, options)
  end
end

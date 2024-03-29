# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Model.ScopeMappingRepresentation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"client",
    :"clientScope",
    :"roles",
    :"self"
  ]

  @type t :: %__MODULE__{
    :"client" => String.t | nil,
    :"clientScope" => String.t | nil,
    :"roles" => [String.t] | nil,
    :"self" => String.t | nil
  }
end

defimpl Poison.Decoder, for: KeycloakAdminRESTAPI.Model.ScopeMappingRepresentation do
  def decode(value, _options) do
    value
  end
end


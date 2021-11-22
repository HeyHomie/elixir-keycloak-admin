# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Api.Root do
  @moduledoc """
  API calls for all endpoints tagged `Root`.
  """

  alias KeycloakAdminRESTAPI.Connection
  import KeycloakAdminRESTAPI.RequestBuilder


  @doc """
  Get themes, social providers, auth providers, and event listeners available on this server

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.ServerInfoRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec root_get(Tesla.Env.client, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.ServerInfoRepresentation.t} | {:error, Tesla.Env.t}
  def root_get(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.ServerInfoRepresentation{}}
    ])
  end
end

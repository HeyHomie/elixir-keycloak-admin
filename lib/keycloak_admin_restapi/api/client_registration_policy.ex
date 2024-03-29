# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Api.ClientRegistrationPolicy do
  @moduledoc """
  API calls for all endpoints tagged `ClientRegistrationPolicy`.
  """

  alias KeycloakAdminRESTAPI.Connection
  import KeycloakAdminRESTAPI.RequestBuilder


  @doc """
  Base path for retrieve providers with the configProperties properly filled

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_client_registration_policy_providers_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_client_registration_policy_providers_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/client-registration-policy/providers")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end
end

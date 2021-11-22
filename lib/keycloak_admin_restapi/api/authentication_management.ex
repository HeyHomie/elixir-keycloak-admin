# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Api.AuthenticationManagement do
  @moduledoc """
  API calls for all endpoints tagged `AuthenticationManagement`.
  """

  alias KeycloakAdminRESTAPI.Connection
  import KeycloakAdminRESTAPI.RequestBuilder


  @doc """
  Get authenticator providers   Returns a stream of authenticator providers.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_authenticator_providers_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_authentication_authenticator_providers_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/authenticator-providers")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Get client authenticator providers   Returns a stream of client authenticator providers.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_client_authenticator_providers_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_authentication_client_authenticator_providers_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/client-authenticator-providers")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Get authenticator provider’s configuration description

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - provider_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.AuthenticatorConfigInfoRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_config_description_provider_id_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.AuthenticatorConfigInfoRepresentation.t} | {:error, Tesla.Env.t}
  def realm_authentication_config_description_provider_id_get(connection, realm, provider_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/config-description/#{provider_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.AuthenticatorConfigInfoRepresentation{}}
    ])
  end

  @doc """
  Delete authenticator configuration

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): Configuration id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_config_id_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_config_id_delete(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/authentication/config/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get authenticator configuration

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): Configuration id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.AuthenticatorConfigRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_config_id_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.AuthenticatorConfigRepresentation.t} | {:error, Tesla.Env.t}
  def realm_authentication_config_id_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/config/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.AuthenticatorConfigRepresentation{}}
    ])
  end

  @doc """
  Update authenticator configuration

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): Configuration id
  - authenticator_config_representation (AuthenticatorConfigRepresentation): JSON describing new state of authenticator configuration
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_config_id_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.AuthenticatorConfigRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_config_id_put(connection, realm, id, authenticator_config_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/authentication/config/#{id}")
    |> add_param(:body, :body, authenticator_config_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Update execution with new configuration

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - execution_id (String.t): Execution id
  - authenticator_config_representation (AuthenticatorConfigRepresentation): JSON with new configuration
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_executions_execution_id_config_post(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.AuthenticatorConfigRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_executions_execution_id_config_post(connection, realm, execution_id, authenticator_config_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/executions/#{execution_id}/config")
    |> add_param(:body, :body, authenticator_config_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Delete execution

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - execution_id (String.t): Execution id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_executions_execution_id_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_executions_execution_id_delete(connection, realm, execution_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/authentication/executions/#{execution_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get Single Execution

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - execution_id (String.t): Execution id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_executions_execution_id_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_executions_execution_id_get(connection, realm, execution_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/executions/#{execution_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Lower execution’s priority

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - execution_id (String.t): Execution id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_executions_execution_id_lower_priority_post(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_executions_execution_id_lower_priority_post(connection, realm, execution_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/executions/#{execution_id}/lower-priority")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Raise execution’s priority

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - execution_id (String.t): Execution id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_executions_execution_id_raise_priority_post(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_executions_execution_id_raise_priority_post(connection, realm, execution_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/executions/#{execution_id}/raise-priority")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Add new authentication execution

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - authentication_execution_representation (AuthenticationExecutionRepresentation): JSON model describing authentication execution
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_executions_post(Tesla.Env.client, String.t, KeycloakAdminRESTAPI.Model.AuthenticationExecutionRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_executions_post(connection, realm, authentication_execution_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/executions")
    |> add_param(:body, :body, authentication_execution_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Copy existing authentication flow under a new name   The new name is given as 'newName' attribute of the passed JSON object

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - flow_alias (String.t): Name of the existing authentication flow
  - request_body (%{optional(String.t) => map()}): JSON containing 'newName' attribute
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_flow_alias_copy_post(Tesla.Env.client, String.t, String.t, %{optional(String.t) => Map.t}, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_flows_flow_alias_copy_post(connection, realm, flow_alias, request_body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/flows/#{flow_alias}/copy")
    |> add_param(:body, :body, request_body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Add new authentication execution to a flow

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - flow_alias (String.t): Alias of parent flow
  - request_body (%{optional(String.t) => map()}): New execution JSON data containing 'provider' attribute
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_flow_alias_executions_execution_post(Tesla.Env.client, String.t, String.t, %{optional(String.t) => Map.t}, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_flows_flow_alias_executions_execution_post(connection, realm, flow_alias, request_body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/flows/#{flow_alias}/executions/execution")
    |> add_param(:body, :body, request_body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Add new flow with new execution to existing flow

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - flow_alias (String.t): Alias of parent authentication flow
  - request_body (%{optional(String.t) => map()}): New authentication flow / execution JSON data containing 'alias', 'type', 'provider', and 'description' attributes
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_flow_alias_executions_flow_post(Tesla.Env.client, String.t, String.t, %{optional(String.t) => Map.t}, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_flows_flow_alias_executions_flow_post(connection, realm, flow_alias, request_body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/flows/#{flow_alias}/executions/flow")
    |> add_param(:body, :body, request_body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get authentication executions for a flow

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - flow_alias (String.t): Flow alias
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_flow_alias_executions_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_flows_flow_alias_executions_get(connection, realm, flow_alias, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/flows/#{flow_alias}/executions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Update authentication executions of a Flow

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - flow_alias (String.t): Flow alias
  - authentication_execution_info_representation (AuthenticationExecutionInfoRepresentation): AuthenticationExecutionInfoRepresentation
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_flow_alias_executions_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.AuthenticationExecutionInfoRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_flows_flow_alias_executions_put(connection, realm, flow_alias, authentication_execution_info_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/authentication/flows/#{flow_alias}/executions")
    |> add_param(:body, :body, authentication_execution_info_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get authentication flows   Returns a stream of authentication flows.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_authentication_flows_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/flows")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Delete an authentication flow

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): Flow id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_id_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_flows_id_delete(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/authentication/flows/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get authentication flow for id

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): Flow id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.AuthenticationFlowRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_id_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.AuthenticationFlowRepresentation.t} | {:error, Tesla.Env.t}
  def realm_authentication_flows_id_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/flows/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.AuthenticationFlowRepresentation{}}
    ])
  end

  @doc """
  Update an authentication flow

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): Flow id
  - authentication_flow_representation (AuthenticationFlowRepresentation): Authentication flow representation
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_id_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.AuthenticationFlowRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_flows_id_put(connection, realm, id, authentication_flow_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/authentication/flows/#{id}")
    |> add_param(:body, :body, authentication_flow_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Create a new authentication flow

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - authentication_flow_representation (AuthenticationFlowRepresentation): Authentication flow representation
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_flows_post(Tesla.Env.client, String.t, KeycloakAdminRESTAPI.Model.AuthenticationFlowRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_flows_post(connection, realm, authentication_flow_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/flows")
    |> add_param(:body, :body, authentication_flow_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get form action providers   Returns a stream of form action providers.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_form_action_providers_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_authentication_form_action_providers_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/form-action-providers")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Get form providers   Returns a stream of form providers.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_form_providers_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_authentication_form_providers_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/form-providers")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Get configuration descriptions for all clients

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_per_client_config_description_get(Tesla.Env.client, String.t, keyword()) :: {:ok, map()} | {:error, Tesla.Env.t}
  def realm_authentication_per_client_config_description_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/per-client-config-description")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %{}}
    ])
  end

  @doc """
  Register a new required actions

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - request_body (%{optional(String.t) => map()}): JSON containing 'providerId', and 'name' attributes.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_register_required_action_post(Tesla.Env.client, String.t, %{optional(String.t) => Map.t}, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_register_required_action_post(connection, realm, request_body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/register-required-action")
    |> add_param(:body, :body, request_body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Delete required action

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): Alias of required action
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_required_actions_alias_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_required_actions_alias_delete(connection, realm, alias, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/authentication/required-actions/#{alias}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get required action for alias

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): Alias of required action
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.RequiredActionProviderRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_required_actions_alias_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.RequiredActionProviderRepresentation.t} | {:error, Tesla.Env.t}
  def realm_authentication_required_actions_alias_get(connection, realm, alias, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/required-actions/#{alias}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.RequiredActionProviderRepresentation{}}
    ])
  end

  @doc """
  Lower required action’s priority

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): Alias of required action
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_required_actions_alias_lower_priority_post(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_required_actions_alias_lower_priority_post(connection, realm, alias, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/required-actions/#{alias}/lower-priority")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Update required action

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): Alias of required action
  - required_action_provider_representation (RequiredActionProviderRepresentation): JSON describing new state of required action
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_required_actions_alias_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.RequiredActionProviderRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_required_actions_alias_put(connection, realm, alias, required_action_provider_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/authentication/required-actions/#{alias}")
    |> add_param(:body, :body, required_action_provider_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Raise required action’s priority

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): Alias of required action
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_required_actions_alias_raise_priority_post(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_authentication_required_actions_alias_raise_priority_post(connection, realm, alias, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/authentication/required-actions/#{alias}/raise-priority")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get required actions   Returns a stream of required actions.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_required_actions_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_authentication_required_actions_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/required-actions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Get unregistered required actions   Returns a stream of unregistered required actions.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_authentication_unregistered_required_actions_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_authentication_unregistered_required_actions_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/authentication/unregistered-required-actions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end
end
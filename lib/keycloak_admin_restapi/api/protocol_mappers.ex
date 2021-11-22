# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Api.ProtocolMappers do
  @moduledoc """
  API calls for all endpoints tagged `ProtocolMappers`.
  """

  alias KeycloakAdminRESTAPI.Connection
  import KeycloakAdminRESTAPI.RequestBuilder


  @doc """
  Delete the mapper

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id1 (String.t): 
  - id2 (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_client_scopes_id1_protocol_mappers_models_id2_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_client_scopes_id1_protocol_mappers_models_id2_delete(connection, realm, id1, id2, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/client-scopes/#{id1}/protocol-mappers/models/#{id2}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get mapper by id

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id1 (String.t): 
  - id2 (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_client_scopes_id1_protocol_mappers_models_id2_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t} | {:error, Tesla.Env.t}
  def realm_client_scopes_id1_protocol_mappers_models_id2_get(connection, realm, id1, id2, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/client-scopes/#{id1}/protocol-mappers/models/#{id2}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation{}}
    ])
  end

  @doc """
  Update the mapper

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id1 (String.t): 
  - id2 (String.t): 
  - protocol_mapper_representation (ProtocolMapperRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_client_scopes_id1_protocol_mappers_models_id2_put(Tesla.Env.client, String.t, String.t, String.t, KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_client_scopes_id1_protocol_mappers_models_id2_put(connection, realm, id1, id2, protocol_mapper_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/client-scopes/#{id1}/protocol-mappers/models/#{id2}")
    |> add_param(:body, :body, protocol_mapper_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Create multiple mappers

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): id of client scope (not name)
  - protocol_mapper_representation ([KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t]): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_client_scopes_id_protocol_mappers_add_models_post(Tesla.Env.client, String.t, String.t, list(KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_client_scopes_id_protocol_mappers_add_models_post(connection, realm, id, protocol_mapper_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/client-scopes/#{id}/protocol-mappers/add-models")
    |> add_param(:body, :body, protocol_mapper_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get mappers

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): id of client scope (not name)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_client_scopes_id_protocol_mappers_models_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_client_scopes_id_protocol_mappers_models_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/client-scopes/#{id}/protocol-mappers/models")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Create a mapper

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): id of client scope (not name)
  - protocol_mapper_representation (ProtocolMapperRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_client_scopes_id_protocol_mappers_models_post(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_client_scopes_id_protocol_mappers_models_post(connection, realm, id, protocol_mapper_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/client-scopes/#{id}/protocol-mappers/models")
    |> add_param(:body, :body, protocol_mapper_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get mappers by name for a specific protocol

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): id of client scope (not name)
  - protocol (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_client_scopes_id_protocol_mappers_protocol_protocol_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_client_scopes_id_protocol_mappers_protocol_protocol_get(connection, realm, id, protocol, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/client-scopes/#{id}/protocol-mappers/protocol/#{protocol}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Delete the mapper

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id1 (String.t): 
  - id2 (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_clients_id1_protocol_mappers_models_id2_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_clients_id1_protocol_mappers_models_id2_delete(connection, realm, id1, id2, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/clients/#{id1}/protocol-mappers/models/#{id2}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get mapper by id

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id1 (String.t): 
  - id2 (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_clients_id1_protocol_mappers_models_id2_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t} | {:error, Tesla.Env.t}
  def realm_clients_id1_protocol_mappers_models_id2_get(connection, realm, id1, id2, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/clients/#{id1}/protocol-mappers/models/#{id2}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation{}}
    ])
  end

  @doc """
  Update the mapper

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id1 (String.t): 
  - id2 (String.t): 
  - protocol_mapper_representation (ProtocolMapperRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_clients_id1_protocol_mappers_models_id2_put(Tesla.Env.client, String.t, String.t, String.t, KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_clients_id1_protocol_mappers_models_id2_put(connection, realm, id1, id2, protocol_mapper_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/clients/#{id1}/protocol-mappers/models/#{id2}")
    |> add_param(:body, :body, protocol_mapper_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Create multiple mappers

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): id of client (not client-id)
  - protocol_mapper_representation ([KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t]): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_clients_id_protocol_mappers_add_models_post(Tesla.Env.client, String.t, String.t, list(KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_clients_id_protocol_mappers_add_models_post(connection, realm, id, protocol_mapper_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/clients/#{id}/protocol-mappers/add-models")
    |> add_param(:body, :body, protocol_mapper_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get mappers

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): id of client (not client-id)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_clients_id_protocol_mappers_models_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_clients_id_protocol_mappers_models_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/clients/#{id}/protocol-mappers/models")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Create a mapper

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): id of client (not client-id)
  - protocol_mapper_representation (ProtocolMapperRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_clients_id_protocol_mappers_models_post(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.ProtocolMapperRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_clients_id_protocol_mappers_models_post(connection, realm, id, protocol_mapper_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/clients/#{id}/protocol-mappers/models")
    |> add_param(:body, :body, protocol_mapper_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get mappers by name for a specific protocol

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): id of client (not client-id)
  - protocol (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_clients_id_protocol_mappers_protocol_protocol_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_clients_id_protocol_mappers_protocol_protocol_get(connection, realm, id, protocol, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/clients/#{id}/protocol-mappers/protocol/#{protocol}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end
end

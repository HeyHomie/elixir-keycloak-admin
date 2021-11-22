# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Api.Groups do
  @moduledoc """
  API calls for all endpoints tagged `Groups`.
  """

  alias KeycloakAdminRESTAPI.Connection
  import KeycloakAdminRESTAPI.RequestBuilder


  @doc """
  Returns the groups counts.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
    - :search (String.t): 
    - :top (boolean()): 
  ## Returns

  {:ok, %{}} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_count_get(Tesla.Env.client, String.t, keyword()) :: {:ok, map()} | {:error, Tesla.Env.t}
  def realm_groups_count_get(connection, realm, opts \\ []) do
    optional_params = %{
      :"search" => :query,
      :"top" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{realm}/groups/count")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %{}}
    ])
  end

  @doc """
  Get group hierarchy.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
    - :brief_representation (boolean()): 
    - :first (integer()): 
    - :max (integer()): 
    - :search (String.t): 
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_groups_get(connection, realm, opts \\ []) do
    optional_params = %{
      :"briefRepresentation" => :query,
      :"first" => :query,
      :"max" => :query,
      :"search" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{realm}/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Set or create child.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): 
  - group_representation (GroupRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_id_children_post(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.GroupRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_groups_id_children_post(connection, realm, id, group_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/groups/#{id}/children")
    |> add_param(:body, :body, group_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_id_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_groups_id_delete(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/groups/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.GroupRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_id_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.GroupRepresentation.t} | {:error, Tesla.Env.t}
  def realm_groups_id_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/groups/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.GroupRepresentation{}}
    ])
  end

  @doc """
  Return object stating whether client Authorization permissions have been initialized or not and a reference

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_id_management_permissions_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} | {:error, Tesla.Env.t}
  def realm_groups_id_management_permissions_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/groups/#{id}/management/permissions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.ManagementPermissionReference{}}
    ])
  end

  @doc """
  Return object stating whether client Authorization permissions have been initialized or not and a reference

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): 
  - management_permission_reference (ManagementPermissionReference): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_id_management_permissions_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} | {:error, Tesla.Env.t}
  def realm_groups_id_management_permissions_put(connection, realm, id, management_permission_reference, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/groups/#{id}/management/permissions")
    |> add_param(:body, :body, management_permission_reference)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.ManagementPermissionReference{}}
    ])
  end

  @doc """
  Get users   Returns a stream of users, filtered according to query parameters

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :brief_representation (boolean()): Only return basic information (only guaranteed to return id, username, created, first and last name,  email, enabled state, email verification state, federation link, and access.  Note that it means that namely user attributes, required actions, and not before are not returned.)
    - :first (integer()): Pagination offset
    - :max (integer()): Maximum results size (defaults to 100)
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_id_members_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_groups_id_members_get(connection, realm, id, opts \\ []) do
    optional_params = %{
      :"briefRepresentation" => :query,
      :"first" => :query,
      :"max" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{realm}/groups/#{id}/members")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Update group, ignores subgroups.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): 
  - group_representation (GroupRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_id_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.GroupRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_groups_id_put(connection, realm, id, group_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/groups/#{id}")
    |> add_param(:body, :body, group_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  create or add a top level realm groupSet or create child.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - group_representation (GroupRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_groups_post(Tesla.Env.client, String.t, KeycloakAdminRESTAPI.Model.GroupRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_groups_post(connection, realm, group_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/groups")
    |> add_param(:body, :body, group_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end
end

# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Api.RolesByID do
  @moduledoc """
  API calls for all endpoints tagged `RolesByID`.
  """

  alias KeycloakAdminRESTAPI.Connection
  import KeycloakAdminRESTAPI.RequestBuilder


  @doc """
  Get client-level roles for the client that are in the role’s composite

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): 
  - client_uuid (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_composites_clients_client_uuid_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_composites_clients_client_uuid_get(connection, realm, role_id, client_uuid, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/roles-by-id/#{role_id}/composites/clients/#{client_uuid}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Remove a set of roles from the role’s composite

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): Role id
  - role_representation ([KeycloakAdminRESTAPI.Model.RoleRepresentation.t]): A set of roles to be removed
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_composites_delete(Tesla.Env.client, String.t, String.t, list(KeycloakAdminRESTAPI.Model.RoleRepresentation.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_composites_delete(connection, realm, role_id, role_representation, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/roles-by-id/#{role_id}/composites")
    |> add_param(:body, :body, role_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get role’s children   Returns a set of role’s children provided the role is a composite.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): Role id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_composites_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_composites_get(connection, realm, role_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/roles-by-id/#{role_id}/composites")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Make the role a composite role by associating some child roles

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): Role id
  - role_representation ([KeycloakAdminRESTAPI.Model.RoleRepresentation.t]): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_composites_post(Tesla.Env.client, String.t, String.t, list(KeycloakAdminRESTAPI.Model.RoleRepresentation.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_composites_post(connection, realm, role_id, role_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/roles-by-id/#{role_id}/composites")
    |> add_param(:body, :body, role_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get realm-level roles that are in the role’s composite

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_composites_realm_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_composites_realm_get(connection, realm, role_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/roles-by-id/#{role_id}/composites/realm")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Delete the role

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): id of role
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_delete(connection, realm, role_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/roles-by-id/#{role_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get a specific role’s representation

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): id of role
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.RoleRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.RoleRepresentation.t} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_get(connection, realm, role_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/roles-by-id/#{role_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.RoleRepresentation{}}
    ])
  end

  @doc """
  Return object stating whether role Authoirzation permissions have been initialized or not and a reference

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_management_permissions_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_management_permissions_get(connection, realm, role_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/roles-by-id/#{role_id}/management/permissions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.ManagementPermissionReference{}}
    ])
  end

  @doc """
  Return object stating whether role Authoirzation permissions have been initialized or not and a reference

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): 
  - management_permission_reference (ManagementPermissionReference): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_management_permissions_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_management_permissions_put(connection, realm, role_id, management_permission_reference, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/roles-by-id/#{role_id}/management/permissions")
    |> add_param(:body, :body, management_permission_reference)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.ManagementPermissionReference{}}
    ])
  end

  @doc """
  Update the role

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - role_id (String.t): id of role
  - role_representation (RoleRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_roles_by_id_role_id_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.RoleRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_roles_by_id_role_id_put(connection, realm, role_id, role_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/roles-by-id/#{role_id}")
    |> add_param(:body, :body, role_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end
end

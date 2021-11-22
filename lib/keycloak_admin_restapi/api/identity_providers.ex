# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Api.IdentityProviders do
  @moduledoc """
  API calls for all endpoints tagged `IdentityProviders`.
  """

  alias KeycloakAdminRESTAPI.Connection
  import KeycloakAdminRESTAPI.RequestBuilder


  @doc """
  Import identity provider from uploaded JSON file

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_import_config_post(Tesla.Env.client, String.t, keyword()) :: {:ok, map()} | {:error, Tesla.Env.t}
  def realm_identity_provider_import_config_post(connection, realm, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/identity-provider/import-config")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %{}}
    ])
  end

  @doc """
  Delete the identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_delete(connection, realm, alias, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/identity-provider/instances/#{alias}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Export public broker configuration for identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :format (String.t): Format to use
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_export_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_export_get(connection, realm, alias, opts \\ []) do
    optional_params = %{
      :"format" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{realm}/identity-provider/instances/#{alias}/export")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get the identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.IdentityProviderRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.IdentityProviderRepresentation.t} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_get(connection, realm, alias, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/identity-provider/instances/#{alias}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.IdentityProviderRepresentation{}}
    ])
  end

  @doc """
  Return object stating whether client Authorization permissions have been initialized or not and a reference

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_management_permissions_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_management_permissions_get(connection, realm, alias, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/identity-provider/instances/#{alias}/management/permissions")
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
  - alias (String.t): 
  - management_permission_reference (ManagementPermissionReference): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_management_permissions_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.ManagementPermissionReference.t} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_management_permissions_put(connection, realm, alias, management_permission_reference, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/identity-provider/instances/#{alias}/management/permissions")
    |> add_param(:body, :body, management_permission_reference)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.ManagementPermissionReference{}}
    ])
  end

  @doc """
  Get mapper types for identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_mapper_types_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_mapper_types_get(connection, realm, alias, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/identity-provider/instances/#{alias}/mapper-types")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get mappers for identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_mappers_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_mappers_get(connection, realm, alias, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/identity-provider/instances/#{alias}/mappers")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Delete a mapper for the identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - id (String.t): Mapper id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_mappers_id_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_mappers_id_delete(connection, realm, alias, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/identity-provider/instances/#{alias}/mappers/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get mapper by id for the identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - id (String.t): Mapper id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.IdentityProviderMapperRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_mappers_id_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.IdentityProviderMapperRepresentation.t} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_mappers_id_get(connection, realm, alias, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/identity-provider/instances/#{alias}/mappers/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.IdentityProviderMapperRepresentation{}}
    ])
  end

  @doc """
  Update a mapper for the identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - id (String.t): Mapper id
  - identity_provider_mapper_representation (IdentityProviderMapperRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_mappers_id_put(Tesla.Env.client, String.t, String.t, String.t, KeycloakAdminRESTAPI.Model.IdentityProviderMapperRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_mappers_id_put(connection, realm, alias, id, identity_provider_mapper_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/identity-provider/instances/#{alias}/mappers/#{id}")
    |> add_param(:body, :body, identity_provider_mapper_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Add a mapper to identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - identity_provider_mapper_representation (IdentityProviderMapperRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_mappers_post(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.IdentityProviderMapperRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_mappers_post(connection, realm, alias, identity_provider_mapper_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/identity-provider/instances/#{alias}/mappers")
    |> add_param(:body, :body, identity_provider_mapper_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Update the identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - alias (String.t): 
  - identity_provider_representation (IdentityProviderRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_alias_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.IdentityProviderRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_alias_put(connection, realm, alias, identity_provider_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/identity-provider/instances/#{alias}")
    |> add_param(:body, :body, identity_provider_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get identity providers

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/identity-provider/instances")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Create a new identity provider

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - identity_provider_representation (IdentityProviderRepresentation): JSON body
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_instances_post(Tesla.Env.client, String.t, KeycloakAdminRESTAPI.Model.IdentityProviderRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_identity_provider_instances_post(connection, realm, identity_provider_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/identity-provider/instances")
    |> add_param(:body, :body, identity_provider_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get identity providers

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - provider_id (String.t): Provider id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_identity_provider_providers_provider_id_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_identity_provider_providers_provider_id_get(connection, realm, provider_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/identity-provider/providers/#{provider_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end
end

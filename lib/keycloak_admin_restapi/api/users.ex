# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule KeycloakAdminRESTAPI.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias KeycloakAdminRESTAPI.Connection
  import KeycloakAdminRESTAPI.RequestBuilder


  @doc """
  Returns the number of users that match the given criteria.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
    - :email (String.t): email filter
    - :email_verified (boolean()): 
    - :first_name (String.t): first name filter
    - :last_name (String.t): last name filter
    - :search (String.t): arbitrary search string for all the fields below
    - :username (String.t): username filter
  ## Returns

  {:ok, integer()} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_count_get(Tesla.Env.client, String.t, keyword()) :: {:ok, Integer.t} | {:error, Tesla.Env.t}
  def realm_users_count_get(connection, realm, opts \\ []) do
    optional_params = %{
      :"email" => :query,
      :"emailVerified" => :query,
      :"firstName" => :query,
      :"lastName" => :query,
      :"search" => :query,
      :"username" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{realm}/users/count")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get users   Returns a stream of users, filtered according to query parameters

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - opts (KeywordList): [optional] Optional parameters
    - :brief_representation (boolean()): Boolean which defines whether brief representations are returned (default: false)
    - :email (String.t): A String contained in email, or the complete email, if param \"exact\" is true
    - :email_verified (boolean()): whether the email has been verified
    - :enabled (boolean()): Boolean representing if user is enabled or not
    - :exact (boolean()): Boolean which defines whether the params \"last\", \"first\", \"email\" and \"username\" must match exactly
    - :first (integer()): Pagination offset
    - :first_name (String.t): A String contained in firstName, or the complete firstName, if param \"exact\" is true
    - :idp_alias (String.t): The alias of an Identity Provider linked to the user
    - :idp_user_id (String.t): The userId at an Identity Provider linked to the user
    - :last_name (String.t): A String contained in lastName, or the complete lastName, if param \"exact\" is true
    - :max (integer()): Maximum results size (defaults to 100)
    - :search (String.t): A String contained in username, first or last name, or email
    - :username (String.t): A String contained in username, or the complete username, if param \"exact\" is true
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_get(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_users_get(connection, realm, opts \\ []) do
    optional_params = %{
      :"briefRepresentation" => :query,
      :"email" => :query,
      :"emailVerified" => :query,
      :"enabled" => :query,
      :"exact" => :query,
      :"first" => :query,
      :"firstName" => :query,
      :"idpAlias" => :query,
      :"idpUserId" => :query,
      :"lastName" => :query,
      :"max" => :query,
      :"search" => :query,
      :"username" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{realm}/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Return credential types, which are provided by the user storage where user is stored.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_configured_user_storage_credential_types_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_users_id_configured_user_storage_credential_types_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/users/#{id}/configured-user-storage-credential-types")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Revoke consent and offline tokens for particular client from user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - client (String.t): Client id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_consents_client_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_consents_client_delete(connection, realm, id, client, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/users/#{id}/consents/#{client}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get consents granted by the user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_consents_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_users_id_consents_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/users/#{id}/consents")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Remove a credential for a user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - credential_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_credentials_credential_id_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_credentials_credential_id_delete(connection, realm, id, credential_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/users/#{id}/credentials/#{credential_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Move a credential to a position behind another credential

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - credential_id (String.t): The credential to move
  - new_previous_credential_id (String.t): The credential that will be the previous element in the list. If set to null, the moved credential will be the first element in the list.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_credentials_credential_id_move_after_new_previous_credential_id_post(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_credentials_credential_id_move_after_new_previous_credential_id_post(connection, realm, id, credential_id, new_previous_credential_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/users/#{id}/credentials/#{credential_id}/moveAfter/#{new_previous_credential_id}")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Move a credential to a first position in the credentials list of the user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - credential_id (String.t): The credential to move
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_credentials_credential_id_move_to_first_post(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_credentials_credential_id_move_to_first_post(connection, realm, id, credential_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/users/#{id}/credentials/#{credential_id}/moveToFirst")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Update a credential label for a user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - credential_id (String.t): 
  - body (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_credentials_credential_id_user_label_put(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_credentials_credential_id_user_label_put(connection, realm, id, credential_id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/users/#{id}/credentials/#{credential_id}/userLabel")
    |> add_param(:body, :body, body)
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
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_credentials_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_users_id_credentials_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/users/#{id}/credentials")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Delete the user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_delete(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/users/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Disable all credentials for a user of a specific type

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - request_body ([String.t]): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_disable_credential_types_put(Tesla.Env.client, String.t, String.t, list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_disable_credential_types_put(connection, realm, id, request_body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/users/#{id}/disable-credential-types")
    |> add_param(:body, :body, request_body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Send a update account email to the user   An email contains a link the user can click to perform a set of required actions.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - request_body ([String.t]): required actions the user needs to complete
  - opts (KeywordList): [optional] Optional parameters
    - :client_id (String.t): Client id
    - :lifespan (integer()): Number of seconds after which the generated token expires
    - :redirect_uri (String.t): Redirect uri
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_execute_actions_email_put(Tesla.Env.client, String.t, String.t, list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_execute_actions_email_put(connection, realm, id, request_body, opts \\ []) do
    optional_params = %{
      :"client_id" => :query,
      :"lifespan" => :query,
      :"redirect_uri" => :query
    }
    %{}
    |> method(:put)
    |> url("/#{realm}/users/#{id}/execute-actions-email")
    |> add_param(:body, :body, request_body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get social logins associated with the user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_federated_identity_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_users_id_federated_identity_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/users/#{id}/federated-identity")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Remove a social login provider from user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - provider (String.t): Social login provider id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_federated_identity_provider_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_federated_identity_provider_delete(connection, realm, id, provider, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/users/#{id}/federated-identity/#{provider}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Add a social login provider to the user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - provider (String.t): Social login provider id
  - federated_identity_representation (FederatedIdentityRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_federated_identity_provider_post(Tesla.Env.client, String.t, String.t, String.t, KeycloakAdminRESTAPI.Model.FederatedIdentityRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_federated_identity_provider_post(connection, realm, id, provider, federated_identity_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/users/#{id}/federated-identity/#{provider}")
    |> add_param(:body, :body, federated_identity_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get representation of the user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, KeycloakAdminRESTAPI.Model.UserRepresentation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, KeycloakAdminRESTAPI.Model.UserRepresentation.t} | {:error, Tesla.Env.t}
  def realm_users_id_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/users/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %KeycloakAdminRESTAPI.Model.UserRepresentation{}}
    ])
  end

  @doc """

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
    - :search (String.t): 
  ## Returns

  {:ok, %{}} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_groups_count_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, map()} | {:error, Tesla.Env.t}
  def realm_users_id_groups_count_get(connection, realm, id, opts \\ []) do
    optional_params = %{
      :"search" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{realm}/users/#{id}/groups/count")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %{}}
    ])
  end

  @doc """

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
    - :brief_representation (boolean()): 
    - :first (integer()): 
    - :max (integer()): 
    - :search (String.t): 
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_groups_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_users_id_groups_get(connection, realm, id, opts \\ []) do
    optional_params = %{
      :"briefRepresentation" => :query,
      :"first" => :query,
      :"max" => :query,
      :"search" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{realm}/users/#{id}/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - group_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_groups_group_id_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_groups_group_id_delete(connection, realm, id, group_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{realm}/users/#{id}/groups/#{group_id}")
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
  - id (String.t): User id
  - group_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_groups_group_id_put(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_groups_group_id_put(connection, realm, id, group_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/users/#{id}/groups/#{group_id}")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Impersonate the user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_impersonation_post(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, map()} | {:error, Tesla.Env.t}
  def realm_users_id_impersonation_post(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/users/#{id}/impersonation")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", %{}}
    ])
  end

  @doc """
  Remove all user sessions associated with the user   Also send notification to all clients that have an admin URL to invalidate the sessions for the particular user.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_logout_post(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_logout_post(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/users/#{id}/logout")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get offline sessions associated with the user and client

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - client_uuid (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_offline_sessions_client_uuid_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_users_id_offline_sessions_client_uuid_get(connection, realm, id, client_uuid, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/users/#{id}/offline-sessions/#{client_uuid}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Update the user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - user_representation (UserRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.UserRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_put(connection, realm, id, user_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/users/#{id}")
    |> add_param(:body, :body, user_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Set up a new password for the user.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - credential_representation (CredentialRepresentation): The representation must contain a rawPassword with the plain-text password
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_reset_password_put(Tesla.Env.client, String.t, String.t, KeycloakAdminRESTAPI.Model.CredentialRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_reset_password_put(connection, realm, id, credential_representation, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/users/#{id}/reset-password")
    |> add_param(:body, :body, credential_representation)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Send an email-verification email to the user   An email contains a link the user can click to verify their email address.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
    - :client_id (String.t): Client id
    - :redirect_uri (String.t): Redirect uri
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_send_verify_email_put(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_id_send_verify_email_put(connection, realm, id, opts \\ []) do
    optional_params = %{
      :"client_id" => :query,
      :"redirect_uri" => :query
    }
    %{}
    |> method(:put)
    |> url("/#{realm}/users/#{id}/send-verify-email")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end

  @doc """
  Get sessions associated with the user

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - id (String.t): User id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Map{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_id_sessions_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(Map.t)} | {:error, Tesla.Env.t}
  def realm_users_id_sessions_get(connection, realm, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/users/#{id}/sessions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", []}
    ])
  end

  @doc """
  Create a new user   Username must be unique.

  ## Parameters

  - connection (KeycloakAdminRESTAPI.Connection): Connection to server
  - realm (String.t): realm name (not id!)
  - user_representation (UserRepresentation): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_post(Tesla.Env.client, String.t, KeycloakAdminRESTAPI.Model.UserRepresentation.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_post(connection, realm, user_representation, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/#{realm}/users")
    |> add_param(:body, :body, user_representation)
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
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_profile_get(Tesla.Env.client, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def realm_users_profile_get(connection, realm, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{realm}/users/profile")
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
  - body (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec realm_users_profile_put(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def realm_users_profile_put(connection, realm, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{realm}/users/profile")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { "2XX", false}
    ])
  end
end

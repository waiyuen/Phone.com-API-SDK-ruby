=begin
#Phone.com API

#This is a Phone.com api Swagger definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::OauthApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OauthApi' do
  before do
    # run before each test
    @instance = SwaggerClient::OauthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OauthApi' do
    it 'should create an instance of OauthApi' do
      expect(@instance).to be_instance_of(SwaggerClient::OauthApi)
    end
  end

  # unit tests for create_oauth_access_token
  # To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant.
  # To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant. For Authorization Code Grant, the input parameter &#39;code&#39; is generated via the Create Authorization API. NOTE: The Create Access Token API now accepts requests in query string format as well as JSON body format. See OAuth for more details on how to obtain client id and client secret to create an access token at real time.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateOauthParams] :data Oauth data
  # @return [OauthAccessToken]
  describe 'create_oauth_access_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_oauth_authorization
  # Create Authorization Code or Access Token.
  # Create Authorization Code or Access Token. The /oauth/authorization API supports Authorization Grant and Implicit Grant. In Authorization Grant, this API returns a code (response_type&#x3D;code) for clients implemented in a browser using a scripting language such as JavaScript. Users may then use the code via the Create Access Token API to create an access token. The Implicit Grant is a simplified authorization code flow. In the implicit flow, instead of issuing the client an authorization code, the client is issued an access token (response_type&#x3D;token) directly. See OAuth for more details on how to obtain client id and client secret to create authorization code access token at real time.
  # @param client_id Client ID
  # @param response_type &#39;token&#39; for Implicit Grant; &#39;code&#39; for Authorization Code Grant
  # @param scope account-owner, extension-user and/or methods:ALL, separated by space (%20)
  # @param redirect_uri The URL where the response data of this API is redirected to
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_oauth_authorization test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_oauth_access_token
  # Retrieve details of an access token, such as scope, expiration and extension ID.
  # Retrieve details of an access token, such as scope, expiration and extension ID. Voip ID will be returned as well if scope contains account-owner scope.
  # @param [Hash] opts the optional parameters
  # @return [GetOauthAccessToken]
  describe 'get_oauth_access_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

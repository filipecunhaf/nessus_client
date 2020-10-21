# frozen_string_literal: true

# Namespace for Policies resource.
module Resource::Policies
  # List the scan polices.
  # @return [JSON] list of policies.
  def policies
    request.get({ path: '/policies', headers: headers })
  end

  # Get id of a policy by its name.
  # @param [String] policy name.
  # @return [Integer] ID of a policy.
  def get_policy_id_by_name(policy_name)
    policies['policies'].each do |policy|
      return policy['id'] if policy['name'] == policy_name
    end
  end

  # Get a policy by its name.
  # @param [String] policy name.
  # @return [JSON] policy object.
  def get_policy_by_name(policy_name)
    policy_id = get_policy_id_by_name(policy_name)
    request.get({ path: "/policies/#{policy_id}", headers: headers })
  end

  # Get a list of credentials from a policy.
  # @param [String] policy name.
  # @return [JSON] credential list
  def list_credentials_by_policy_name(policy_name)
    get_policy_by_name(policy_name)['credentials']
  end

  # update a scan policy.
  # @param [String] policy name.
  # @param [String] history_id (nil) The `history_id` of a scan.
  # @return nil
  def update_policy_by_name(policy_name, payload)
    id = get_policy_id_by_name(policy_name)
    request.put({ path: "/policies/#{id}", headers: headers, payload: payload })
  end
end

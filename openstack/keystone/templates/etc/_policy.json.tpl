{
    "admin_required": "role:admin",
    "cloud_admin": "role:admin and ((is_admin_project:True or domain_id:default){{- if .Values.tempest.enabled }} or domain_id:{{.Values.tempest.domainId}}{{- end}})",
    "service_role": "role:service",
    "service_or_admin": "rule:admin_required or rule:service_role",
    "cloud_viewer": "role:cloud_identity_viewer or rule:service_role or rule:cloud_admin",
    "owner": "user_id:%(user_id)s or user_id:%(target.token.user_id)s",
    "admin_or_owner": "(rule:admin_required and domain_id:%(target.token.user.domain.id)s) or rule:owner",
    "admin_and_matching_domain_id": "rule:admin_required and domain_id:%(domain_id)s",
    "service_admin_or_owner": "rule:service_or_admin or rule:owner",
    "cloud_admin_or_owner": "rule:cloud_admin or rule:owner",

    "default": "rule:admin_required",

    "identity:get_region": "",
    "identity:list_regions": "",
    "identity:create_region": "rule:cloud_admin",
    "identity:update_region": "rule:cloud_admin",
    "identity:delete_region": "rule:cloud_admin",

    "identity:get_service": "rule:admin_required or rule:cloud_viewer",
    "identity:list_services": "rule:admin_required or rule:cloud_viewer",
    "identity:create_service": "rule:cloud_admin",
    "identity:update_service": "rule:cloud_admin",
    "identity:delete_service": "rule:cloud_admin",

    "identity:get_endpoint": "rule:admin_required or rule:cloud_viewer",
    "identity:list_endpoints": "rule:admin_required or rule:cloud_viewer",
    "identity:create_endpoint": "rule:cloud_admin",
    "identity:update_endpoint": "rule:cloud_admin",
    "identity:delete_endpoint": "rule:cloud_admin",

    "identity:get_registered_limit": "",
    "identity:list_registered_limits": "",
    "identity:create_registered_limits": "rule:admin_required",
    "identity:update_registered_limit": "rule:admin_required",
    "identity:delete_registered_limit": "rule:admin_required",

    "identity:get_limit_model": "",
    "identity:get_limit": "",
    "identity:list_limits": "",
    "identity:create_limits": "rule:admin_required",
    "identity:update_limit": "rule:admin_required",
    "identity:delete_limit": "rule:admin_required",

    "identity:get_domain": "rule:cloud_admin or rule:admin_and_matching_domain_id or project.domain.id:%(target.domain.id)s or rule:cloud_viewer or role:role_viewer",
    "identity:list_domains": "rule:cloud_admin or rule:cloud_viewer or role:role_viewer",
    "identity:create_domain": "rule:cloud_admin",
    "identity:update_domain": "rule:cloud_admin",
    "identity:delete_domain": "rule:cloud_admin",

    "admin_and_matching_target_project_domain_id": "rule:admin_required and domain_id:%(target.project.domain_id)s",
    "admin_and_matching_project_domain_id": "rule:admin_required and domain_id:%(project.domain_id)s",
    "identity:get_project": "rule:cloud_admin or rule:admin_and_matching_target_project_domain_id or project_id:%(target.project.id)s or rule:cloud_viewer or role:role_viewer",
    "identity:list_projects": "rule:cloud_admin or rule:admin_and_matching_domain_id or rule:cloud_viewer",
    "identity:list_user_projects": "rule:owner or rule:admin_and_matching_domain_id or rule:cloud_viewer",
    "identity:create_project": "rule:cloud_admin or rule:admin_and_matching_project_domain_id",
    "identity:update_project": "rule:cloud_admin or rule:admin_and_matching_target_project_domain_id",
    "identity:delete_project": "rule:cloud_admin",

    "identity:create_project_tag": "rule:cloud_admin or rule:service_role",
    "identity:delete_project_tag": "rule:cloud_admin or rule:service_role",
    "identity:get_project_tag": "rule:admin_required or rule:cloud_viewer",
    "identity:list_project_tags": "rule:admin_required or rule:cloud_viewer",
    "identity:delete_project_tags": "rule:cloud_admin or rule:service_role",
    "identity:update_project_tags": "rule:cloud_admin or rule:service_role",

    "admin_and_matching_target_user_domain_id": "rule:admin_required and domain_id:%(target.user.domain_id)s",
    "admin_and_matching_user_domain_id": "rule:admin_required and domain_id:%(user.domain_id)s",
    "identity:get_user": "rule:cloud_admin or rule:admin_and_matching_target_user_domain_id or rule:owner or rule:cloud_viewer or role:role_viewer",
    "identity:list_users": "rule:cloud_admin or rule:admin_and_matching_domain_id or rule:cloud_viewer or role:role_viewer",
    "identity:create_user": "rule:cloud_admin or rule:admin_and_matching_user_domain_id",
    "identity:update_user": "rule:cloud_admin or rule:admin_and_matching_target_user_domain_id",
    "identity:delete_user": "rule:cloud_admin",

    "admin_and_matching_target_group_domain_id": "rule:admin_required and domain_id:%(target.group.domain_id)s",
    "admin_and_matching_group_domain_id": "rule:admin_required and domain_id:%(group.domain_id)s",
    "identity:get_group": "rule:cloud_admin or rule:admin_and_matching_target_group_domain_id or rule:cloud_viewer or role:role_viewer",
    "identity:list_groups": "rule:cloud_admin or rule:admin_and_matching_domain_id or rule:cloud_viewer",
    "identity:list_groups_for_user": "rule:cloud_admin or rule:owner or rule:admin_and_matching_target_user_domain_id or rule:cloud_viewer",
    "identity:create_group": "rule:cloud_admin or rule:admin_and_matching_group_domain_id",
    "identity:update_group": "rule:cloud_admin or rule:admin_and_matching_target_group_domain_id",
    "identity:delete_group": "rule:cloud_admin",
    "identity:list_users_in_group": "rule:cloud_admin or rule:admin_and_matching_target_group_domain_id or rule:cloud_viewer",
    "identity:remove_user_from_group": "rule:cloud_admin or rule:admin_and_matching_target_group_domain_id",
    "identity:check_user_in_group": "rule:cloud_admin or rule:admin_and_matching_target_group_domain_id",
    "identity:add_user_to_group": "rule:cloud_admin or rule:admin_and_matching_target_group_domain_id",

    "identity:get_credential": "user_id:%(target.credential.user_id)s",
    "identity:list_credentials": "user_id:%(target.credential.user_id)s",
    "identity:create_credential": "rule:cloud_admin or (user_id:%(target.credential.user_id)s)",
    "identity:update_credential": "rule:cloud_admin or (user_id:%(target.credential.user_id)s)",
    "identity:delete_credential": "rule:cloud_admin or (user_id:%(target.credential.user_id)s)",

    "identity:ec2_get_credential": "user_id:%(user_id)s and user_id:%(target.credential.user_id)s",
    "identity:ec2_list_credentials": "user_id:%(user_id)s",
    "identity:ec2_create_credential": "rule:cloud_admin or user_id:%(user_id)s",
    "identity:ec2_delete_credential": "rule:cloud_admin or (user_id:%(user_id)s and user_id:%(target.credential.user_id)s)",

    "identity:get_role": "rule:admin_required or rule:cloud_viewer or role:role_admin or role:role_viewer",
    "identity:list_roles": "rule:admin_required or rule:cloud_viewer or role:role_admin or role:role_viewer",
    "identity:create_role": "rule:cloud_admin",
    "identity:update_role": "rule:cloud_admin",
    "identity:delete_role": "rule:cloud_admin",

    "identity:get_domain_role": "rule:cloud_admin or rule:get_domain_roles or rule:cloud_viewer",
    "identity:list_domain_roles": "rule:cloud_admin or rule:list_domain_roles or rule:cloud_viewer",
    "identity:create_domain_role": "rule:cloud_admin or rule:domain_admin_matches_domain_role",
    "identity:update_domain_role": "rule:cloud_admin or rule:domain_admin_matches_target_domain_role",
    "identity:delete_domain_role": "rule:cloud_admin or rule:domain_admin_matches_target_domain_role",
    "domain_admin_matches_domain_role": "rule:admin_required and domain_id:%(role.domain_id)s",
    "get_domain_roles": "rule:domain_admin_matches_target_domain_role or rule:project_admin_matches_target_domain_role",
    "domain_admin_matches_target_domain_role": "rule:admin_required and domain_id:%(target.role.domain_id)s",
    "project_admin_matches_target_domain_role": "(rule:admin_required or role:role_admin) and project_domain_id:%(target.role.domain_id)s",
    "list_domain_roles": "rule:domain_admin_matches_filter_on_list_domain_roles or rule:project_admin_matches_filter_on_list_domain_roles",
    "domain_admin_matches_filter_on_list_domain_roles": "rule:admin_required and domain_id:%(domain_id)s",
    "project_admin_matches_filter_on_list_domain_roles": "(rule:admin_required or role:role_admin or role:role_viewer) and project_domain_id:%(domain_id)s",
    "admin_and_matching_prior_role_domain_id": "rule:admin_required and domain_id:%(target.prior_role.domain_id)s",
    "implied_role_matches_prior_role_domain_or_global": "(domain_id:%(target.implied_role.domain_id)s or None:%(target.implied_role.domain_id)s)",

    "identity:get_implied_role": "rule:cloud_admin or rule:admin_and_matching_prior_role_domain_id or rule:cloud_viewer",
    "identity:list_implied_roles": "rule:cloud_admin or rule:admin_and_matching_prior_role_domain_id or rule:cloud_viewer",
    "identity:create_implied_role": "rule:cloud_admin or (rule:admin_and_matching_prior_role_domain_id and rule:implied_role_matches_prior_role_domain_or_global)",
    "identity:delete_implied_role": "rule:cloud_admin or rule:admin_and_matching_prior_role_domain_id",
    "identity:list_role_inference_rules": "rule:cloud_admin or rule:cloud_viewer or role:role_admin or role:role_viewer",
    "identity:check_implied_role": "rule:cloud_admin or rule:admin_and_matching_prior_role_domain_id or rule:cloud_viewer or role:role_admin or role:role_viewer",

    "identity:list_system_grants_for_user": "rule:cloud_admin or rule:cloud_viewer",
    "identity:check_system_grant_for_user": "rule:cloud_admin or rule:cloud_viewer",
    "identity:create_system_grant_for_user": "rule:cloud_admin",
    "identity:revoke_system_grant_for_user": "rule:cloud_admin",

    "identity:list_system_grants_for_group": "rule:cloud_admin or rule:cloud_viewer",
    "identity:check_system_grant_for_group": "rule:cloud_admin or rule:cloud_viewer",
    "identity:create_system_grant_for_group": "rule:cloud_admin",
    "identity:revoke_system_grant_for_group": "rule:cloud_admin",

    "blacklist_roles": "'resource_service':%(target.role.name)s or 'cloud_registry_admin':%(target.role.name)s or 'cloud_registry_viewer':%(target.role.name)s or 'cloud_resource_admin':%(target.role.name)s or 'cloud_resource_viewer':%(target.role.name)s or 'cloud_baremetal_admin':%(target.role.name)s or 'cloud_network_admin':%(target.role.name)s or 'cloud_dns_admin':%(target.role.name)s or 'dns_admin':%(target.role.name)s or 'cloud_image_admin':%(target.role.name)s or 'cloud_compute_admin':%(target.role.name)s or 'cloud_keymanager_admin':%(target.role.name)s or 'cloud_volume_admin':%(target.role.name)s or 'cloud_sharedfilesystem_admin':%(target.role.name)s or 'cloud_sharedfilesystem_editor':%(target.role.name)s or 'cloud_sharedfilesystem_viewer':%(target.role.name)s or 'swiftreseller':%(target.role.name)s or 'service':%(target.role.name)s or 'cloud_identity_viewer':%(target.role.name)s or 'cloud_support_tools_viewer':%(target.role.name)s",
    "blacklist_projects": "'{{required ".Values.api.cloudAdminProjectId is missing" .Values.api.cloudAdminProjectId}}':%(target.project.id)s",
    "identity:check_grant": "rule:cloud_admin or rule:domain_admin_for_grants or rule:project_admin_for_grants",
    "identity:list_grants": "rule:cloud_admin or rule:domain_admin_for_list_grants or rule:project_admin_for_list_grants",
    "identity:create_grant": "rule:cloud_admin or rule:domain_admin_for_grants or rule:project_admin_for_grants",
    "identity:revoke_grant": "rule:cloud_admin or rule:domain_admin_for_grants or rule:project_admin_for_grants",
    "domain_admin_for_grants": "(rule:domain_admin_for_global_role_grants or rule:domain_admin_for_domain_role_grants) and not rule:blacklist_roles and not rule:blacklist_projects",
    "domain_admin_for_global_role_grants": "rule:admin_required and None:%(target.role.domain_id)s and rule:domain_admin_grant_match",
    "domain_admin_for_domain_role_grants": "rule:admin_required and domain_id:%(target.role.domain_id)s and rule:domain_admin_grant_match",
    "domain_admin_grant_match": "domain_id:%(domain_id)s or domain_id:%(target.project.domain_id)s",
    "project_admin_for_grants": "(rule:project_admin_for_global_role_grants or rule:project_admin_for_domain_role_grants) and not rule:blacklist_roles and not rule:blacklist_projects",
    "project_admin_for_global_role_grants": "(rule:admin_required or role:role_admin) and None:%(target.role.domain_id)s and project_id:%(project_id)s",
    "project_admin_for_domain_role_grants": "(rule:admin_required or role:role_admin) and project_domain_id:%(target.role.domain_id)s and project_id:%(project_id)s",
    "domain_admin_for_list_grants": "rule:admin_required and rule:domain_admin_grant_match",
    "project_admin_for_list_grants": "(rule:admin_required or role:role_admin or role:role_viewer) and project_id:%(project_id)s",

    "admin_on_domain_filter": "rule:admin_required and domain_id:%(scope.domain.id)s",
    "admin_on_project_filter": "(rule:admin_required or role:role_admin or role:role_viewer) and project_id:%(scope.project.id)s",
    "admin_on_domain_of_project_filter": "(rule:admin_required or role:role_admin or role:role_viewer) and domain_id:%(target.project.domain_id)s",
    "identity:list_role_assignments": "rule:cloud_admin or rule:admin_on_domain_filter or rule:admin_on_project_filter or rule:cloud_viewer",
    "identity:list_role_assignments_for_tree": "rule:cloud_admin or rule:admin_on_domain_of_project_filter",
    "identity:get_policy": "rule:cloud_admin or rule:cloud_viewer",
    "identity:list_policies": "rule:cloud_admin or rule:cloud_viewer",
    "identity:create_policy": "rule:cloud_admin",
    "identity:update_policy": "rule:cloud_admin",
    "identity:delete_policy": "rule:cloud_admin",

    "identity:change_password": "rule:cloud_admin_or_owner",
    "identity:check_token": "rule:admin_or_owner",
    "identity:validate_token": "rule:service_admin_or_owner",
    "identity:validate_token_head": "rule:service_or_admin",
    "identity:revocation_list": "rule:service_or_admin",
    "identity:revoke_token": "rule:admin_or_owner",

    "identity:create_trust": "user_id:%(trust.trustor_user_id)s",
    "identity:list_trusts": "",
    "identity:list_roles_for_trust": "",
    "identity:get_role_for_trust": "",
    "identity:delete_trust": "",
    "identity:get_trust": "",

    "identity:create_consumer": "rule:cloud_admin",
    "identity:get_consumer": "rule:cloud_admin or rule:cloud_viewer",
    "identity:list_consumers": "rule:cloud_admin or rule:cloud_viewer",
    "identity:delete_consumer": "rule:cloud_admin",
    "identity:update_consumer": "rule:cloud_admin",

    "identity:authorize_request_token": "rule:cloud_admin or rule:cloud_viewer",
    "identity:list_access_token_roles": "rule:cloud_admin or rule:cloud_viewer",
    "identity:get_access_token_role": "rule:cloud_admin or rule:cloud_viewer",
    "identity:list_access_tokens": "rule:cloud_admin or rule:cloud_viewer",
    "identity:get_access_token": "rule:cloud_admin",
    "identity:delete_access_token": "rule:cloud_admin",

    "identity:list_projects_for_endpoint": "rule:cloud_admin or rule:cloud_viewer",
    "identity:add_endpoint_to_project": "rule:cloud_admin",
    "identity:check_endpoint_in_project": "rule:cloud_admin",
    "identity:list_endpoints_for_project": "rule:cloud_admin or rule:cloud_viewer",
    "identity:remove_endpoint_from_project": "rule:cloud_admin",

    "identity:create_endpoint_group": "rule:cloud_admin",
    "identity:list_endpoint_groups": "rule:cloud_admin or rule:cloud_viewer",
    "identity:get_endpoint_group": "rule:cloud_admin",
    "identity:update_endpoint_group": "rule:cloud_admin",
    "identity:delete_endpoint_group": "rule:cloud_admin",
    "identity:list_projects_associated_with_endpoint_group": "rule:cloud_admin or rule:cloud_viewer",
    "identity:list_endpoints_associated_with_endpoint_group": "rule:cloud_admin or rule:cloud_viewer",
    "identity:get_endpoint_group_in_project": "rule:cloud_admin",
    "identity:list_endpoint_groups_for_project": "rule:cloud_admin or rule:cloud_viewer",
    "identity:add_endpoint_group_to_project": "rule:cloud_admin",
    "identity:remove_endpoint_group_from_project": "rule:cloud_admin",

    "identity:create_identity_provider": "rule:cloud_admin",
    "identity:list_identity_providers": "rule:cloud_admin or rule:cloud_viewer",
    "identity:get_identity_provider": "rule:cloud_admin or rule:cloud_viewer",
    "identity:update_identity_provider": "rule:cloud_admin",
    "identity:delete_identity_provider": "rule:cloud_admin",

    "identity:create_protocol": "rule:cloud_admin",
    "identity:update_protocol": "rule:cloud_admin",
    "identity:get_protocol": "rule:cloud_admin or rule:cloud_viewer",
    "identity:list_protocols": "rule:cloud_admin or rule:cloud_viewer",
    "identity:delete_protocol": "rule:cloud_admin",

    "identity:create_mapping": "rule:cloud_admin",
    "identity:get_mapping": "rule:cloud_admin or rule:cloud_viewer",
    "identity:list_mappings": "rule:cloud_admin or rule:cloud_viewer",
    "identity:delete_mapping": "rule:cloud_admin",
    "identity:update_mapping": "rule:cloud_admin",

    "identity:create_service_provider": "rule:cloud_admin",
    "identity:list_service_providers": "rule:cloud_admin or rule:cloud_viewer",
    "identity:get_service_provider": "rule:cloud_admin or rule:cloud_viewer",
    "identity:update_service_provider": "rule:cloud_admin",
    "identity:delete_service_provider": "rule:cloud_admin",

    "identity:get_auth_catalog": "",
    "identity:get_auth_projects": "",
    "identity:get_auth_domains": "",
    "identity:get_auth_system": "",

    "identity:list_projects_for_user": "",
    "identity:list_domains_for_user": "",

    "identity:list_revoke_events": "rule:service_or_admin",

    "identity:create_policy_association_for_endpoint": "rule:cloud_admin",
    "identity:check_policy_association_for_endpoint": "rule:cloud_admin",
    "identity:delete_policy_association_for_endpoint": "rule:cloud_admin",
    "identity:create_policy_association_for_service": "rule:cloud_admin",
    "identity:check_policy_association_for_service": "rule:cloud_admin",
    "identity:delete_policy_association_for_service": "rule:cloud_admin",
    "identity:create_policy_association_for_region_and_service": "rule:cloud_admin",
    "identity:check_policy_association_for_region_and_service": "rule:cloud_admin",
    "identity:delete_policy_association_for_region_and_service": "rule:cloud_admin",
    "identity:get_policy_for_endpoint": "rule:cloud_admin",
    "identity:list_endpoints_for_policy": "rule:cloud_admin",

    "identity:create_domain_config": "rule:cloud_admin",
    "identity:get_domain_config": "rule:cloud_admin",
    "identity:get_security_compliance_domain_config": "",
    "identity:update_domain_config": "rule:cloud_admin",
    "identity:delete_domain_config": "rule:cloud_admin",
    "identity:get_domain_config_default": "rule:cloud_admin",

    "identity:get_application_credential": "rule:admin_or_owner",
    "identity:list_application_credentials": "rule:admin_or_owner",
    "identity:create_application_credential": "rule:admin_or_owner",
    "identity:delete_application_credential": "rule:admin_or_owner"
}

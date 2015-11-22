Tabulous.setup do

  tabs do

    admin_dashboard_tab do
      text          { 'Admin Dashboard' }
      link_path     { admin_dashboard_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/dashboard') }
    end

    admin_admin_users_tab do
      text          { 'Admin Admin Users' }
      link_path     { admin_admin_users_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/admin_users') }
    end

    admin_applications_tab do
      text          { 'Admin Applications' }
      link_path     { admin_applications_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/applications') }
    end

    admin_categories_tab do
      text          { 'Admin Categories' }
      link_path     { admin_categories_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/categories') }
    end

    admin_users_tab do
      text          { 'Admin Users' }
      link_path     { admin_users_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/users') }
    end

    admin_interviews_tab do
      text          { 'Admin Interviews' }
      link_path     { admin_interviews_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/interviews') }
    end

    admin_vacancies_tab do
      text          { 'Admin Vacancies' }
      link_path     { admin_vacancies_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/vacancies') }
    end

    admin_candidates_tab do
      text          { 'Admin Candidates' }
      link_path     { admin_candidates_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/candidates') }
    end

    admin_client_requests_tab do
      text          { 'Admin Client Requests' }
      link_path     { admin_client_requests_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/client_requests') }
    end

    admin_comments_tab do
      text          { 'Admin Comments' }
      link_path     { admin_comments_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/comments') }
    end

    public_tab do
      text          { 'Public' }
      link_path     { root_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('public') }
    end

    candidates_tab do
      text          { 'Candidates' }
      link_path     { candidates_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('candidates') }
    end

    vacancies_tab do
      text          { 'Vacancies' }
      link_path     { vacancies_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('vacancies') }
    end

    client_requests_tab do
      text          { 'Client Requests' }
      link_path     { client_requests_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('client_requests') }
    end

    applications_tab do
      text          { 'Applications' }
      link_path     { applications_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('applications') }
    end

    interviews_tab do
      text          { 'Interviews' }
      link_path     { interviews_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('interviews') }
    end

  end

  customize do

    # which class to use to generate HTML
    # :default, :html5, :bootstrap, :bootstrap_pill or :bootstrap_navbar
    # or create your own renderer class and reference it here
    # renderer :default

    # whether to allow the active tab to be clicked
    # defaults to true
    # active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end

  # The following will insert some CSS straight into your HTML so that you
  # can quickly prototype an app with halfway-decent looking tabs.
  #
  # This scaffolding should be turned off and replaced by your own custom
  # CSS before using tabulous in production.
  use_css_scaffolding do
    background_color '#ccc'
    text_color '#444'
    active_tab_color '#fff'
    hover_tab_color '#ddd'
    inactive_tab_color '#aaa'
    inactive_text_color '#888'
  end

end

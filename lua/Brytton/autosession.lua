 require('auto-session').setup {
      log_level = 'info',
      auto_session_suppress_dirs = {'~/', '~/Projects'},
	  auto_session_enable_last_session = false,
	  auto_restore_enabled = false,
	  auto_session_create_enabled = false,
	  auto_save_enabled = false
}

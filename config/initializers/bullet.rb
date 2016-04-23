Rails.application.config.after_initialize do
  Bullet.enable = true
  Bullet.alert = true
  Bullet.rails_logger = true
  Bullet.console = true
  # Detect N+1 queries
  Bullet.n_plus_one_query_enable     = false
  # Detect eager-loaded associations which are not used
  Bullet.unused_eager_loading_enable = false
  Bullet.counter_cache_enable        = false

end if defined?(Bullet)

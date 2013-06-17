action :setup do
  %w{keys models logs}.each do |p|
    directory "#{new_resource.base_dir}/#{p}" do
      owner node["backup"]["user"]
      group node["backup"]["group"]
      action :create
      recursive true
    end
  end

  template "#{new_resource.base_dir}/config.rb" do
    owner node["backup"]["user"]
    group node["backup"]["group"]
    cookbook "backup"
    source "config.rb.erb"
    variables({
                :console_quiet       => node["backup"]["log_configure"]["console_quiet"],
                :logfile_enabled     => node["backup"]["log_configure"]["logfile_enabled"],
                :logfile_log_path    => node["backup"]["log_configure"]["logfile_log_path"],
                :logfile_max_bytes   => node["backup"]["log_configure"]["logfile_max_bytes"],
                :syslog_enabled      => node["backup"]["log_configure"]["syslog_enabled"],
                :syslog_ident        => node["backup"]["log_configure"]["syslog_ident"],
                :syslog_options      => node["backup"]["log_configure"]["syslog_options"],
                :syslog_facility     => node["backup"]["log_configure"]["syslog_facility"],
                :syslog_info         => node["backup"]["log_configure"]["syslog_info"],
                :syslog_warn         => node["backup"]["log_configure"]["syslog_warn"],
                :syslog_error        => node["backup"]["log_configure"]["syslog_error"],
                :encryption_password => new_resource.encryption_password
              })
  end
  new_resource.updated_by_last_action(true)
end

action :remove do
  directory new_resource.base_dir do
    action :remove
    recursive true
  end
  new_resource.updated_by_last_action(true)
end


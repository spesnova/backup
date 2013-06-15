#
# Author:: Seigo Uchida (<spesnova@gmail.com>)
# Cookbook Name:: backup
# Attributes:: default
#
# Copyright (C) 2013 Seigo Uchida (<spesnova@gmail.com>)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["backup"]["log_configure"]["console_quiet"]     = false
default["backup"]["log_configure"]["logfile_enabled"]   = true
default["backup"]["log_configure"]["logfile_log_path"]   = "/opt/backup/logs"
default["backup"]["log_configure"]["logfile_max_bytes"] = 500_000
default["backup"]["log_configure"]["syslog_enabled"]    = false
default["backup"]["log_configure"]["syslog_ident"]      = "backup"
default["backup"]["log_configure"]["syslog_options"]    = "Syslog::LOG_PID"
default["backup"]["log_configure"]["syslog_facility"]   = "Syslog::LOG_LOCAL0"
default["backup"]["log_configure"]["syslog_info"]       = "Syslog::LOG_INFO"
default["backup"]["log_configure"]["syslog_warn"]       = "Syslog::LOG_WARNING"
default["backup"]["log_configure"]["syslog_error"]      = "Syslog::LOG_ERR"

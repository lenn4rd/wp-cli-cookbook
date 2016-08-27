#
# Cookbook Name:: wp-cli
# Recipe:: default
#
# Copyright 2014, handwerk*neu
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

directory '/usr/local/share/wp-cli'

remote_file "#{Chef::Config[:file_cache_path]}/wp-cli.phar" do
  source 'https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar'
  path '/usr/local/share/wp-cli/wp-cli.phar'
  mode '0755'
end

link '/usr/local/bin/wp' do
  to '/usr/local/share/wp-cli/wp-cli.phar'
end

execute 'wp --info' do
  command name
  user node['wp-cli']['user']
end

remote_file "#{Chef::Config[:file_cache_path]}/wp_completion.bash" do
  source 'https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash'
  path '/etc/bash_completion.d/wp'
  mode '0644'
end
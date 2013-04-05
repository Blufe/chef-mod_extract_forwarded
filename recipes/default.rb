
include_recipe "apache2::mod_proxy"

package "mod_extract_forwarded"

apache_conf "extract_forwarded"

# can't just use apache_module because need to load after mod_proxy configuration
file "#{node['apache']['dir']}/mods-available/z_extract_forwarded.load" do
  content "LoadModule extract_forwarded_module #{node['apache']['libexecdir']}/mod_extract_forwarded.so\n"
  mode 0644
end

execute "a2enmod_extract_forwarded" do
  command "/usr/sbin/a2enmod z_extract_forwarded"
  notifies :restart, resources(:service => "apache2")
  not_if { ::File.symlink?("#{node['apache']['dir']}/mods-enabled/z_extract_forwarded.load") }
end

link "#{node["apache"]["dir"]}/mods-enabled/extract_forwarded.conf" do
  to "#{node["apache"]["dir"]}/mods-available/extract_forwarded.conf"
end

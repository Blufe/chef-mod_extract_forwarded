
package "mod_extract_forwarded" do
  action :install
end

apache_module "extract_forwarded" do
  conf true
end

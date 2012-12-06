
package "mod_extracted_forwarded" do
  action :install
end

apache_module "mod_extracted_forwarded" do
  conf true
end

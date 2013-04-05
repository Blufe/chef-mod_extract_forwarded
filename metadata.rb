name              "mod_extract_forwarded"
maintainer        "The Wharton School - The University of Pennsylvania"
maintainer_email  "bflad@wharton.upenn.edu"
license           "Apache 2.0"
description       "Installs/configures mod_extract_forwarded."
version           "0.1.4"
recipe            "mod_extract_forwarded", "Installs/configures mod_extract_forwarded."

%w{ apache2 }.each do |cb|
  depends cb
end

%w{ centos redhat }.each do |os|
  supports os
end

package "dev-lang/php" do
  version "5.3.24"
  action :install
end

bash "eselect-php5_3" do
  code <<-EOH
    eselect php set cli php5.3
    eselect php set fpm php5.3
    monit restart php-fpm
  EOH
  user "root"
end
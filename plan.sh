pkg_origin=franklinwebber
pkg_name=webapp
pkg_version="0.2.0"
pkg_maintainer="Franklin Webber <franklin@chef.io>"
pkg_license=('Apache-2.0')
pkg_deps=(core/httpd)
pkg_svc_user="root"
pkg_svc_group="root"
pkg_svc_run="httpd -DFOREGROUND -f $pkg_svc_config_path/httpd.conf"

# Override the default do_download to take no action.
do_download() {
  return 0;
}

# Override the default do_build to take no action.
do_build() {
  return 0;
}

do_install() {
  # Override the default do_install to copy the only file that
  # creates this site into the package.
  cp hello-world ${pkg_prefix}/
}

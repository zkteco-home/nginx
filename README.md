

# Nginx(X64) for Windows X64 system [zkteco-home](https://github.com/zkteco-home/nginx)


If you want to get latest version or [report any issues],please contact [michael](michael.wang.zkteco@gmail.com), thanks in advance!

## Why not open source code?

1. source code is as same as [nginx](https://github.com/nginx/nginx)

2. We have a professional team to maintain its stable operation

3. We can collect all the issues, because you don't have the source code, to avoid changing the source code by yourself and not being able to share



## DISCLAIMER

This release is based on [Nginx](https://github.com/nginx/nginx). It has passed all the standard tests.

Due to the many functional differences between windows and linux,There are still unknown issues/bugs, in particular there is a bug to work properly in certain scenarios.
If you download and install it, you accept the following agreement by default：

NO LIABILITY FOR DAMAGES

In no event shall the author of this Software be liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or any other pecuniary loss) arising out of the use of or inability to use this product, even if the Author of this Software has been advised of the possibility of such damages.


## Building from source code on Windows

  - Nginx binaries are built with the original source [Nginx](https://github.com/nginx/nginx) and have been compiled with Visual Studio 2022 to obtain higher performance and better stability than the binaries built by Cygwin, MSYS, or even WSL2.

  - Nginx can be installed as a Windows Service.
  
## Supported Windows Versions

- Windows Vista x64
- Windows Server 2008 x64
- Windows Server 2012 x64
- Windows Server 2016/2019 x64  
- Windows 7 x64
- Windows 10/11 x64


## Including the following modules:

    "ngx_core_module",
    "ngx_errlog_module",
    "ngx_conf_module",
    "ngx_openssl_module",
    "ngx_regex_module",
    "ngx_events_module",
    "ngx_event_core_module",
    "ngx_iocp_module",
    "ngx_select_module",
    "ngx_poll_module",
    "ngx_http_module",
    "ngx_http_core_module",
    "ngx_http_log_module",
    "ngx_http_upstream_module",
    "ngx_http_static_module",
    "ngx_http_autoindex_module",
    "ngx_http_index_module",
    "ngx_http_mirror_module",
    "ngx_http_try_files_module",
    "ngx_http_auth_basic_module",
    "ngx_http_access_module",
    "ngx_http_limit_conn_module",
    "ngx_http_limit_req_module",
    "ngx_http_geo_module",
    "ngx_http_map_module",
    "ngx_http_split_clients_module",
    "ngx_http_referer_module",
    "ngx_http_rewrite_module",
    "ngx_http_ssl_module",
    "ngx_http_proxy_module",
    "ngx_http_fastcgi_module",
    "ngx_http_uwsgi_module",
    "ngx_http_scgi_module",
    "ngx_http_memcached_module",
    "ngx_http_empty_gif_module",
    "ngx_http_browser_module",
    "ngx_http_upstream_hash_module",
    "ngx_http_upstream_ip_hash_module",
    "ngx_http_upstream_least_conn_module",
    "ngx_http_upstream_random_module",
    "ngx_http_upstream_keepalive_module",
    "ngx_http_upstream_zone_module",
    "ngx_http_write_filter_module",
    "ngx_http_header_filter_module",
    "ngx_http_chunked_filter_module",
    "ngx_http_range_header_filter_module",
    "ngx_http_gzip_filter_module",
    "ngx_http_postpone_filter_module",
    "ngx_http_ssi_filter_module",
    "ngx_http_charset_filter_module",
    "ngx_http_userid_filter_module",
    "ngx_http_headers_filter_module",
    "ngx_http_copy_filter_module",
    "ngx_http_range_body_filter_module",
    "ngx_http_not_modified_filter_module"

- if you need other modules,please inform me,thanks.


## Running Nginx as a Service

-   Self elevation of the nginx executable so that service commands would work from a non-elevated command prompt.

-   Service naming so that multiple instances of the Nginx service could be installed on one machine.

-   Automatically adjusting folder permissions so that when Nginx is run under the NETWORK SERVICE account it could modify the files in the installation directory.



### Run install_nginx.cmd as Administrator  (recommanded)

you also can use the following command and manage nginx service:


Installing the Service
------------------------

*--service-install*

This must be the first argument on the nginx command line. Arguments after this are passed in the order they occur to Nginx when the service is launched. The service will be configured as Autostart and will be launched as "NT AUTHORITY\\NetworkService". Upon successful installation a success message will be displayed and Nginx will exit.

This command does not start the service.

For instance:

nginx.exe --service-install 
or
nginx.exe --service-install -c conf/nginx.conf

Uninstalling the Service
------------------------

*--service-uninstall*

This will remove the Nginx service configuration information from the registry. Upon successful uninstallation a success message will be displayed and Nginx will exit.

This does command not stop the service.

For instance:

nginx.exe --service-uninstall

Starting the Service
--------------------

*--service-start*

This will start the Nginx service. Upon successful start, a success message will be displayed and Nginx will begin running.

For instance:

nginx.exe --service-start

Stopping the Service
--------------------

*--service-stop*

This will stop the Nginx service. Upon successful termination a success message will be displayed and Nginx will exit.

For instance:

nginx.exe --service-stop

Naming the Service
------------------

*--service-name **name***

This optional argument may be used with any of the preceding commands to set the name of the installed service. This argument should follow the service-install, service-start, service-stop or service-uninstall commands, and precede any arguments to be passed to Nginx via the service-install command.

The following would install and start three separate instances of Nginx as a service:

nginx.exe --service-install --service-name nginx1

nginx.exe --service-start --service-name nginx1

The following would stop and uninstall three separate instances of Nginx as a service:

nginx.exe --service-stop --service-name nginx1

nginx.exe --service-uninstall --service-name nginx1


Notice:
------------------

if you dont want to run it as service,it also can work as official nginx.

  

<VirtualHost %ip%:%web_port%>
    ServerName %domain_idn%
    ServerAlias %alias_idn%
    ErrorLog /var/log/%web_system%/domains/%domain%.error.log

    <Location /cpaneladmin>
        ProxyPass https://127.0.0.1:2083/
        ProxyPassReverse https://127.0.0.1:2083/
        ProxyPreserveHost On
        RequestHeader set X-Forwarded-Proto "https"
        Require all granted
    </Location>
</VirtualHost>

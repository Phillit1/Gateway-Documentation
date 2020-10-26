;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns.new.com. Phillit1.gmail.com. (
			      4		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.new.com
@	IN	A	192.168.2.222
*	IN	A	192.168.2.222
@	IN	AAAA	::1

# Manages the message of the day.
class motd {

    file { '/etc/motd':
        mode    => '0444',
        owner   => root,
        group   => root,
        content => "
               
This is a mykezy inc. information System, which may be accessed and used for
authorized WDS business purposes only. Information on this System may be
intercepted, recorded, read, copied, and disclosed to authorized individuals
only. All information on WDS information Systems is subject to monitoring by
authorized individuals. Additional security precautions (e.g. encryption) for
confidential and/or proprietary data, such as Personally Identifiable
Information should be employed. Unauthorized access or use of this information
System may subject violators to criminal, civil, and/or administrative action.
THERE IS NO RIGHT OF PRIVACY FOR ANY PERSON ACCESSING OR USING THIS SYSTEM.
This notice will be construed in accordance with applicable laws. Your access
or use of this information System constitutes consent to these terms.

This system is managed by Puppet.


           SYSTEM INFO:
           ===========
           IP Address = ${::ipaddress}
           HOSTNAME   = ${::fqdn}
           Hostname   = ${::fqdn}
           Memory     = ${::osmemorysystemtotal}
           Cores      = ${::processorscount}
           OS         = ${::osdistrodescription}
"
    }
}


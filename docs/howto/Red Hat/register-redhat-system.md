Environnement
-------------

-   Red Hat Enterprise Linux(RHEL) 5.7 and newer
-   Red Hat Enterprise Linux(RHEL) 6.1 and newer
-   Red Hat Enterprise Linux(RHEL) 7.0 and newer
-   Red Hat Subscription Management
-   Red Hat Subscription-Manager
-   Red Hat Customer Portal

What it is about
----------------

Red Hat Subscription Management allows users to track their subscription
quantity and consumption.

Register and automatically subscribe in one step
------------------------------------------------

Use the following command to register the system, then automatically
associate any available subscription matching that system:

``` {.bash}
# subscription-manager register --username <username> --password <password> --auto-attach
```

If the command is unable to attach a subscription, it will indicate that
in the output. Then, you can attach the subscription from the Customer
Portal, instead (see the next section).

Register first, then attach a subscription in the Customer Portal

Use the following command to register a system without immediately
attaching a subscription:

``` {.bash}
# subscription-manager register
```

Attach a specific subscription through the Customer Portal
----------------------------------------------------------

After registration, you can to assign a subscription to the registered
system from the Customer Portal by referring this article.

After this, refresh the information on your machine using the following
command. Be sure to run this any time you add or change the attached
subscription from the Customer Portal:

``` {.bash}
# subscription-manager refresh
```

Attach a subscription from any available that match the system
--------------------------------------------------------------

After registration, use the following command to attach any available
subscription that matches the current system.

``` {.bash}
# subscription-manager attach --auto
```

Register with a specific pool
-----------------------------

After registration, use the following command to attach a subscription
from a specific pool:

``` {.bash}
# subscription-manager attach --pool=<POOL_ID>
```

Note: With subscription-manager-1.1.9-1 or later, attach option has been
replacing the subscribe option. For more information, please refer to
following article: RHBA-2013-0350

If you are not sure of the pool ID needed, these and details such as
expiration dates can be viewed using the following command:

``` {.bash}
# subscription-manager list --available --all
```

Registration via GUI
--------------------

``` {.bash}
# subscription-manager-gui
```

Systems can also be registered with Customer Portal Subscription
Management during the firstboot process or as part of the kickstart
setup (both described in the Installation Guide)

Unregistering a system
----------------------

``` {.bash}
# subscription-manager remove --all
# subscription-manager unregister
# subscription-manager clean
```

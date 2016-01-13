=======
Powerdns
=======

Install, configure and run ``powerdns``.

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

The formula has been made because `official
<https://github.com/saltstack-formulas/powerdns-formula>`_ one is too specific.

Available states
================

.. contents::
    :local:

``powerdns``
-----------

Includes minimal amount of states in order for formula for work

``powerdns.pkg``
-------------------

Install ``powerdns`` from packages.

``powerdns.config``
------------------

Configures pdns.conf file

``powerdns.service``
-------------------

Make sure ``powerdns`` service is running.

``powerdns.mysql``
-------------------
Enables and configures mysql backend for powerdns

``powerdns.mysql.config``
-------------------
Configures pdns.local.gmysql.conf file

``powerdns.mysql.pkg``
-------------------
Installs package for mysql backend

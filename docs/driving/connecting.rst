Connecting to the Robot
=======================

The Magni 6 Mini emits its own Wi-Fi for SSH access, or you can connect via home network.

Option 1: Connect via Robot's Wi-Fi
###################################

1. Open a terminal.

2. SSH into the robot:

.. code-block:: bash

    ssh ubuntu@10.42.0.1

.. image:: /_static/magni-mini/getting_started/.jpg
    :alt: Connect - username written 
    :width: 400px
    :align: center

3. You will be prompted a password, the password is: **ubuntu**

.. image:: /_static/magni-mini/getting_started/.jpg
    :alt: Connect - password written 
    :width: 400px
    :align: center

| 

You can follow the following video for exact step-by-step guide of connecting to the robot through Robot's Wi-Fi here:

**CONTENT INCOMING**

..  TODO: Video of connecting to the robot through AP mode.


If you followed the steps successfully you will be connected to the robot:

.. image:: /_static/magni-mini/getting_started/.jpg
    :alt: Connection to the robot via Terminal Successful
    :width: 400px
    :align: center

|

Option 2: Connect via Home Network 
##################################

1. Connect to the robot to your local network:

.. code-block:: bash

    sudo nmcli device wifi connect <Local_Network_name> password <password>

Example:

.. code-block:: bash

    sudo nmcli device wifi connect mywifi password mypass1234


2. Open a new terminal (the first will be frozen).
3. Identify the robot's IP address on the network (hostname: **ubuntu**).
4. SSH into the robot:

.. code-block:: bash

    ssh ubuntu@[robots IP]

You can follow the following video for exact step-by-step guide of connecting to the robot through the network: 

[TODO: Video of connecting to the robot through network mode. ]

..  TODO: Video of connecting to the robot through network mode.


You are now connected to the robot with Internet access.

.. image:: /_static/magni-mini/getting_started/.jpg
    :alt: Connection to the robot via Network Successful
    :width: 400px
    :align: center
| 

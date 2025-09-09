Connecting to the Robot
=======================

If not connected to a local network the Magni 6 robots emit own their own Wi-Fi network.
You have two options on how to connect to the robot.

Option 1: Connect via Robot's Wi-Fi
###################################

1. Connect your computer to the robot's network named ubiquityrobotxxxx (where xxxx is a four digit code). The password for the network is "robotseverywhere".

2. Open a terminal.

3. SSH into the robot:

.. code-block:: bash

    ssh ubuntu@10.42.0.1

.. .. image:: /_static/magni-mini/getting_started/.jpg
..     :alt: Connect - username written 
..     :width: 400px
..     :align: center

.. TODO: Add the images here connecting to the robot via AP.

**IMAGE CONTENT INCOMING**

4. You will be prompted a password, the password is: **ubuntu**

.. .. image:: /_static/magni-mini/getting_started/.jpg
..     :alt: Connect - password written 
..     :width: 400px
..     :align: center

.. TODO: Add the images here writing the password for connection via AP

**IMAGE CONTENT INCOMING**

| 

You can follow the following video for exact step-by-step guide of connecting to the robot through Robot's Wi-Fi here:

**VIDEO CONTENT INCOMING**

..  TODO: Video of connecting to the robot through AP mode.


If you followed the steps successfully you will be connected to the robot:

.. .. image:: /_static/magni-mini/getting_started/.jpg
..     :alt: Connection to the robot via Terminal Successful
..     :width: 400px
..     :align: center

.. TODO: Add the image of successfull conection.

**IMAGE CONTENT INCOMING**

|

Option 2: Connect via Home Network 
##################################

1. On first boot follow Option 1 to connect to the robot

2. Connect the robot to your local network:

.. code-block:: bash

    sudo nmcli device wifi connect <Local_Network_name> password <password>

Example:

.. code-block:: bash

    sudo nmcli device wifi connect mywifi password mypass1234


3. Open a new terminal (the first will be frozen).

4. Identify the robot's IP address on the local network (hostname: **ubuntu**).
   This can be done in two ways:
- By logging into the local router (usually on the webpage http://192.168.0.1) and checking connected devices
- By performing a network scan using a utility such as nmap to list local IPs:
.. code-block:: bash

    nmap -sP 192.168.0.0/24

.. warning::

    **Scanning should only be performed on authorized networks!**

.. TODO: Add some better way of distinguishing the RPI IP in the network scan
   
5. SSH into the robot from the local network:

.. code-block:: bash

    ssh ubuntu@[robots IP]

You can follow the following video for exact step-by-step guide of connecting to the robot through the network: 

**VIDEO CONTENT INCOMING**

..  TODO: Video of connecting to the robot through network mode.

You are now connected to the robot with Internet access.

.. .. image:: /_static/magni-mini/getting_started/.jpg
..     :alt: Connection to the robot via Network Successful
..     :width: 400px
..     :align: center

**IMAGE CONTENT INCOMING**

.. TODO: Add similar image but connected trough network.



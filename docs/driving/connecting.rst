Connecting to the Robot
=======================

.. important::

    This page assumes that you are using one of our **newest generation robots**, the **Magni Gen 6**.
    
    For information about **older robot generations or images**, please refer to our `Legacy Documentation <https://learn.ubiquityrobotics.com/noetic_quick_start_connecting>`_.

Magni 6 robots broadcast their own Wi-Fi network by default.
You can connect via this Wi-Fi or integrate the robot into your local network.

.. note:: 

    When first unboxed or after flashing a fresh image, the robot will always start by broadcasting its own Wi-Fi network.

.. warning:: 

    While connected to the robot's Wi-Fi, you will **not** have internet access. 
    To use both the robot and the internet, switch to the local network option.

Before continuing, ensure your workstation is set up: :doc:`../requirements/workstation`.

----

.. _connect_AP:

Option 1: Connect via Robot's Wi-Fi
###################################

.. note:: 

    This section assumes you already unboxed and set up the robot.

    
1. Power on the robot.

2. Connect your computer to the Wi-Fi network:

    - **SSID:** ``UbiquityRobotXXXX``
    - **Password:** ``robotseverywhere``

.. image:: /_static/connecting/robot_name.jpg
    :alt: Robot's AP name
    :width: 400px
    :align: center

|

.. image:: /_static/connecting/robot_password.jpg
    :alt: Robot's password for Wi-Fi
    :width: 400px
    :align: center

|


3. Open a terminal and SSH into the robot:

    .. code-block:: bash

        ssh ubuntu@192.168.0.1

    .. important:: 

        The IP ``192.168.0.1`` is static and is valid for all of the robots.

        Meaning that for every robot, when the robot emits its own Wi-Fi you can SSH through this IP.

4. Enter the SSH password when prompted: **ubuntu**. Note that the password will not be visible while typing.

.. image:: /_static/connecting/SSH_url.png
    :alt: SSH-ing to the robot through Robot's Wi-Fi
    :width: 400px
    :align: center

|

You are now connected directly to the robot.

.. TODO: Here you can add the outcome of the ssh of the robot, do the ls command or something inside the robot.

.. image:: /_static/connecting/SSH_outcome.png
    :alt: The outcome of the SSH to the robot
    :width: 800px
    :align: center

| 


..  TODO: Video of connecting to the robot through AP mode.

.. **Coming soon:** step-by-step video tutorial.

If you successfully connected to the robot you can now drive it through the terminal.
Follow this guide: :doc:`./teleop` to see how to do it.


Option 2: Connect via Local Network 
###################################

.. important::
    
    This method allows simultaneous access to the robot **and** the internet.


1. First connect to the robot via robots Wi-Fi (see :ref:`Option 1 <connect_AP>`).

2. From the SSH session, connect the robot to your Wi-Fi network:

.. code-block:: bash

    sudo nmcli device wifi connect <Local_Netowork_name> password <password>


Example:

.. code-block:: bash

    sudo nmcli device wifi connect mywifi password mypass1234


.. image:: /_static/connecting/connect_robot_to_internet.jpg
    :alt: Connecting robot to internet
    :width: 800px
    :align: center

| 


3. Find the robot's new IP address on your router (hostname: ``ubiquityrobotXXXX``).

.. image:: /_static/connecting/robot_name_in_router_list.jpg
    :alt: The robot name screenshotted from the router list.
    :width: 800px
    :align: center

| 

4. SSH into the robot using the IP:

.. code-block:: bash

    ssh ubuntu@[ROBOT_IP]

.. image:: /_static/connecting/robot_local_net_ssh.jpg
    :alt: SSH-ing into the robot trough the Local Network
    :width: 800px
    :align: center

| 

You are now connected through the local network with the internet access.

.. **Coming soon:** step-by-step video tutorial.

Test your connection by driving the robot: :doc:`./teleop`.

----

Next Steps
##########

Now that your robot is connected with internet access, you can start interacting with it.
A good first step is driving the robot manually. 

We provide two simple options:

- :doc:`Driving the robot through the terminal <./teleop>` which you may have already tested if you followed the guide.
- :doc:`Driving the robot through our custom mapping application <./ez_map_simple_drive>`

Try them out to verify your setup and begin exploring the robot's capabilities.

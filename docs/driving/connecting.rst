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

.. note::
    
    This method allows simultaneous access to the robot **and** the internet.

.. important:: 

    Finishing this step will cause the terminal to become unresponsive. 
    This is expected behavior, as the connection is switching from the robot's Wi-Fi network to the local network.
    
    You may safely close the terminal once it stops responding.



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


.. .. important:: 

..     This step will cause the terminal to become unresponsive. 
..     This is expected behavior, as the connection is switching from the robot's Wi-Fi network to the local network.
    
..     You may safely close the terminal once it stops responding.

.. .. note:: 

..     This step will cause the terminal to become unresponsive. 
..     This is expected behavior, as the connection is switching from the robot's Wi-Fi network to the local network.
    
..     You may safely close the terminal once it stops responding.



3. Find the robot's new IP address on your router (hostname: ``ubiquityrobotXXXX``).

You can find the robot's IP address in two ways:

- **Simple way (if you have access to router credentials)**: Log in to your router settings and locate the robot in the list of connected devices.
- **Alternative**: Scan your local network using ``nmap``.

a. **Method 1 - Router Settings**

If you know your router credentials, first determine your default gateway by running the following command in a local terminal:

.. code-block:: bash

    ip route 

You should see an output similar to:

.. code-block:: bash

    default via 192.168.1.1 

The IP address shown is your default gateway.
Enter this IP into your web browser to open the router login page.

After logging in, navigate to the connected devices section and look for the robot. 
It should appear as ``ubiquityrobotXXXX``, where ``XXXX`` represents four hexadecimal characters.

For reference, our connected devices sections looks like this (your interface may differ):

.. image:: /_static/connecting/robot_name_in_router_list.jpg
    :alt: The robot name screenshotted from the router list.
    :width: 800px
    :align: center

| 

b. **Method 2 - Using** ``nmap``

First, install ``nmap``:

.. code-block:: bash

    sudo apt update
    sudo apt install nmap

Next, determine your device's IP address and network interface.

.. code-block:: 

    ip route get 1.1.1.1

The output will include your device's source IP address and the interface name (for example, ``wlp``, or ``enp``.).

Now find the network mask:

.. code-block:: 

    ip -brief addr

This command lists the active network interfaces on your device.
Locate the same interface identified in the previous step. 
The IP address will include a suffix such as ``/<mask>``.
Copy the full address together with the mask.

Run the following command:

.. code-block:: bash

    nmap -sn <IP>/<MASK>

This scans your network and returns a list of connected devices along with their IP addresses. 
Look for the hostname ``ubiquityrobotXXXXX``.

Once identified, you can see this IP address to SSH into the robot.

.. important:: 

    The ``nmap`` command will only detect the robot if it is on the same local network.
    Ensure your computer is connected to the same network that the robot was connected to in the previous step.

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

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

.. tip::

    If the robot cannot find your local network, first list nearby Wi-Fi networks from the robot:

    .. code-block:: bash

        nmcli device wifi list

    If your local Wi-Fi (SSID) does not appear in the list, restart the robot and try the connection process again.


3. Find the robot's new IP address on your router (hostname: ``ubiquityrobotXXXX``).

You can find the robot's IP address in two ways:

- **Simple way (if you have access to router credentials)**: Log in to your router settings and locate the robot in the list of connected devices.
- **Alternative**: Scan your local network using ``nmap``.

a. **Method 1 - Router Settings**

If you know your router credentials, first determine your default gateway.

**For Linux/Mac:**

Run the following command in a local terminal:

.. code-block:: bash

    ip route 

You should see an output similar to:

.. code-block:: bash

    default via 192.168.1.1 

**For Windows:**

Open PowerShell or Command Prompt and run:

.. code-block:: bash

    ipconfig

Look for ``Default Gateway`` under your active network adapter.

**For all platforms:**

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

**For Linux/Mac:**

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

**For Windows:**

First, download and install ``nmap`` from `nmap.org <https://nmap.org/download.html>`_.

**Step 1: Find your network information**

Open PowerShell or Command Prompt and run:

.. code-block:: bash

    ipconfig

Look for your active network adapter (usually Ethernet or Wi-Fi) with the following information:

- **IPv4 Address:** Your computer's IP on the network (e.g., ``192.168.1.100``)
- **Subnet Mask:** Defines the network range (e.g., ``255.255.255.0``)

**Step 2: Convert the subnet mask to CIDR notation**

The subnet mask ``255.255.255.0`` corresponds to ``/24`` in CIDR notation. Here's a quick reference:

- ``255.255.255.0`` = ``/24`` (most common)
- ``255.255.0.0`` = ``/16``
- ``255.0.0.0`` = ``/8``

**Step 3: Calculate your network address**

For a typical ``/24`` network, replace the last number in your IP address with ``.0``:

- Your IP: ``192.168.1.100``
- Network address: ``192.168.1.0/24``

**Step 4: Run nmap**

Now scan your network to find connected devices:

.. code-block:: bash

    nmap -sn 192.168.1.0/24

Replace ``192.168.1.0/24`` with your actual network address calculated in Step 3.

**For all platforms:**

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

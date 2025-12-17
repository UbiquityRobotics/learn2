Setting up your Workstation
===========================


.. important::

    This documentation assumes you are setting up a workstation for our **newest generation**, the **Magni Gen 6 robots**, built on **ROS 2**.

    To set up a workstation for **older generation robots** built on **ROS**, please refer to our `Legacy Documentation <https://learn.ubiquityrobotics.com/noetic_quick_start_workstation>`_.


What is a Workstation?
######################

A **workstation** is a computer (desktop, laptop, or virtual machine) set up to connect and interact with our robots.
It runs the same operating system as the robot, allowing you to:

- Monitor ROS 2 topics and system status.
- Visualize sensor data and robot perception (e.g. using `RViz`).
- Send commands to the robot.
- Offload heavy data processing to more powerful hardware.
- Run tools such as `rqt_plot` for PID tuning or `image_view` for camera streams.
- Launch simulations (:doc:`./simulation`).

In short, the workstation is your main interface for programming, debugging, and testing robotic applications.

Requirements for a Workstation
##############################

To work with our robots, a ROS 2-compatible workstation is required. We recommend:

- **Operating System**: Ubuntu 24.04 LTS
- **ROS 2 Distribution**: Jazzy (officially supported)

Other ROS 2 versions may work with adjustments, but only Jazzy is guaranteed to function out of the box with our robots.

Setting up the Desktop Workstation
##################################

.. note:: 

    This section assumes that you are already following the **Requirements for a Workstation** section.

We will not cover how to install Ubuntu 24.04 itself, since there are many good guides available.
Instead, here are some usefull resources:

- `Download Ubuntu 24.04 Desktop <https://ubuntu.com/download/desktop>`_
- `Instalation Guide for Ubuntu 24.04 <https://onlinux.systems/guides/20240925_ubuntu-2404-installation-guide/>`_


Once Ubuntu 24.04 is installed and configured, you can proceed with setting up **ROS 2 Jazzy**.
We recommend following the official ROS 2 installation guide:

- `ROS 2 Jazzy Instalation Guide <https://docs.ros.org/en/jazzy/Installation.html>`_

This will walk you through the step-by-step installation process.


Setting up a Virtual Machine 
############################

.. note::

    A guide for running a virtual machine setup will be provided soon.


Testing the connection
######################

.. note:: 

    This section assumes that you already have Ubuntu 24.04 and ROS 2 Jazzy installed on your workstation.


Testing Ubuntu Installation
---------------------------

To check your Ubuntu version, run:

.. code-block:: bash

    lsb_release -a


You should see output confirming you are running **Ubuntu 24.04 LTS**.

Something like this: 

.. code-block:: bash

    No LSB modules are available.
    Distributor ID:	Ubuntu
    Description:	Ubuntu 24.04.2 LTS
    Release:	24.04
    Codename:	noble


Testing ROS 2 Instalation
-------------------------

To verify ROS 2 is installed correctly and check its version, run:

.. code-block:: bash

    which ros2

You should see something like:

.. code-block:: bash

    /opt/ros/jazzy/bin/ros2

Testing Connection to the Robot
-------------------------------

.. note:: 

    This section assumes you have already received your robot. 
    If you are still waiting, you can skip this section until your robot arrives.

Once Ubuntu and ROS 2 are confirmed working, you can test the connection to your robot.
First, follow the connection guide: :doc:`../driving/connecting`.

After connecting, list the active ROS 2 topics:

.. code-block:: bash
    
    ros2 topic list

You should see something like this:

.. code-block:: bash

    /action_info
    /battery_state
    /buzz
    /camera/image_raw/compressed
    /client_count
    /cmd_vel
    /connected_clients
    /continue_clicked
    /curr_route
    /curve

.. note:: 

    The actual list of topics may be much longer than the examples shown here. 
    The goal is simply to confirm that your workstation is correctly connected to the robot and able to see ROS 2 topics.

If you see a list of topics, your workstation is successfully connected and ready to use.



Zenoh Setup
###########

Zenoh is a communication middleware that enables efficient data exchange between distributed systems,
such as your workstation and robot.
It is designed to work well in environments with limited connectivity,
making it ideal for robotics applications.   

.. TODO: Why do we use it with out robots? Maybe a quick list could help. 

Installation Prerequisites 
--------------------------

Ensure your workstation has ROS 2 Jazzy and the necessary Zenoh packages installed.

.. code-block:: bash

    # Install ROS 2 Desktop (if not already installed)
    sudo apt update
    sudo apt install ros-jazzy-desktop ros-dev-tools -y

    # Install Zenoh Middleware and Teleop Tools
    sudo apt install ros-jazzy-rmw-zenoh-cpp ros-jazzy-teleop-twist-keyboard -y

.. note:: 

    Ensure your workstation and the robot are running the same version of ``ros-jazzy-rmw-zenoh-cpp``.


Establishing the Connection
---------------------------

To connect your workstation to the robot,
you will manually configure the ROS 2 environment in your temrinal to act as a Zenoh Client.


Step 1: Prepare the Robot
~~~~~~~~~~~~~~~~~~~~~~~~~

SSH into your robot following the :doc:`../driving/connecting` guide and ensure the Zenoh Router is running.
This acts as the bridge for your connection. 

**Verify the Router is Running**: Open a new terminal window on the robot (SSH in again) and run:

.. code-block:: bash 

    pgrep -a zenoh

You should see output similar to ``[PID] rmw_zenohd`` or ``[PID] zenoh-router``. 
If you see nothing, the router is not running.

.. TODO: What then?


Step 2: Configure Workstation Terminal
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Open a new terminal on your wokstation.
Run the following commands to configure this specific terminal session to connect to the robot.

Replace ``<ROBOT_UP>`` with the actual IP address of your robot.

.. code-block:: bash

    # 1. Select Zenoh as the middleware
    export RMW_IMPLEMENTATION=rmw_zenoh_cpp

    # 2. Disable local multicast (forces direct connection)
    export ZENOH_SCOUT_MULTICAST_ENABLED=false

    # 3. Configure the connection to the robot (Replace <ROBOT_IP>)
    export ZENOH_CONFIG_OVERRIDE='mode="client";connect/endpoints=["tcp/<ROBOT_IP>:7447"]'


Step 3: Verify Connection
~~~~~~~~~~~~~~~~~~~~~~~~~

Once connected, you can run standard ROS2 tools from your workstation.


Keyboard Teleoperation
**********************

To drive the robot using your keyboard:

.. code-block:: bash

    ros2 run teleop_twist_keyboard teleop_twist_keyboard


Visualization
*************

To view sensor data:

.. code-block:: bash

    rviz2


Disconecting
------------

To return your terminal to its default local state,
simply close the terminal window or unset the configuration variables:

.. code-block:: bash 

    unset RMW_IMPLEMENTATION
    unset ZENOH_SCOUT_MULTICAST_ENABLED
    unset ZENOH_CONFIG_OVERRIDE


Next Steps
##########

Now that your workstation is set up, you can continue in one of two ways:

- If you are still waiting for your robot, try out the :doc:`./simulation` to get familiar with the system.
- If you already have a robot, follow the guide :doc:`../driving/connecting` to connect to the robot and start driving it.

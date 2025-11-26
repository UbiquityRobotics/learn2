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


Next Steps
##########

Now that your workstation is set up, you can continue in one of two ways:

- If you are still waiting for your robot, try out the :doc:`./simulation` to get familiar with the system.
- If you already have a robot, follow the guide :doc:`../driving/connecting` to connect to the robot and start driving it.

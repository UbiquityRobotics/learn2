Magni Robot Simulation
======================

.. note::

   A comprehensive guide to running the Ubiquity Robotics Magni platform in simulation

----

Overview
########


The **Ubiquity Robotics Magni** is a robust differential drive mobile robot platform engineered for industrial and research applications. 
This guide provides step-by-step instructions for setting up and running the Magni robot in simulation using ROS2 and Gazebo.

----

Robot Specifications
####################

Physical Characteristics
------------------------

.. important::

   The physical specifications in this simulation guide are based on a Magni 5 series. 
   However, our latest generation is the Magni 6 series, and the remainder of this documentation focuses on Magni 6. 

   Information about Magni 5 is limited. 
   For additional details, please contact: `Ubiquity Robotics support <support@ubiquityrobotics.com>`_. 
   You can also refer to our legacy documentation `Legacy Documentation <https://learn.ubiquityrobotics.com>`_.


.. table:: Physical Specifications
   :widths: 30 70

   ========================== ====================================
   Component                  Specification
   ========================== ====================================
   Drive System               Differential drive with 2 wheels
   Payload Capacity           Up to 100 kg
   Chassis                    Aerospace-grade aluminum construction
   Motors                     2 x 200W hub motors
   Power Supply               12V and 5V outputs (10A each)
   Battery                    Up to 35 Amp hours of 24V batteries
   Operating Time             Up to 8 hours of normal operation
   ========================== ====================================

Computing Platform
------------------

.. table:: Computing Specifications
   :widths: 30 70

   =================== ================================
   Component           Specification
   =================== ================================
   Onboard Computer    Raspberry Pi 4
   Operating System    Ubuntu with ROS2
   Connectivity        WiFi, Ethernet, 4x USB ports
   Sensors             Sonar array for obstacle avoidance
   =================== ================================

----

Simulation Environment Setup
############################

Prerequisites
-------------

System Requirements
~~~~~~~~~~~~~~~~~~~

- **Operating System:** Ubuntu 24.04 LTS (recommended)
- **ROS2 Version:** Jazzy (for Ubuntu 24.04)
- **Simulator:** Gz sim harmonic (https://gazebosim.org/docs/harmonic/install/)
- **Graphics:** NVIDIA GPU recommended for optimal performance
- **Memory:** Minimum 8GB RAM, 16GB recommended

.. tip::

   For best performance, ensure your system meets the recommended specifications

Installation Steps
------------------

Step 1: Install ROS2 and Dependencies
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Follow the official ROS2 installation guide for your Ubuntu version. Ensure you have the necessary dependencies installed:

https://docs.ros.org/en/jazzy/Installation/Ubuntu-Install-Debs.html

Step 2: Install Magni Robot Packages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. **Download** the Magni robot package from:

   https://drive.google.com/file/d/1SRjRAT85jVueIivhKSYl1sVWF8c6LNqB/view?usp=drive_link

2. **Install** the package:

   .. code-block:: bash

      sudo dpkg -i path/to/magni-description_1.0.1_all.deb

3. **Fix** any dependency issues:

   .. code-block:: bash

      sudo apt-get install -f

Step 3: Verify Installation
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   source /opt/ros/jazzy/setup.bash
   ros2 pkg list | grep magni_description
   source /opt/ros/jazzy/share/magni_description/local_setup.bash

----

Simulation Configuration
########################

URDF Model Structure
--------------------

The Magni robot simulation uses a **Unified Robot Description Format (URDF)** model that defines the following components:

Base Components
~~~~~~~~~~~~~~~

:Base Link: Main chassis with inertial properties
:Wheel Links: Left and right drive wheels with friction parameters
:Caster Wheel: Front support wheel for stability
:Sensor Mounts: Attachment points for sensors

Joint Definitions
~~~~~~~~~~~~~~~~~

:Wheel Joints: Continuous rotation joints for differential drive
:Caster Joint: Fixed joint for support wheel
:Sensor Joints: Fixed joints for sensor mounting

Gazebo Plugin Configuration
---------------------------

The simulation utilizes several Gazebo plugins for realistic robot behavior.

Differential Drive Plugin
~~~~~~~~~~~~~~~~~~~~~~~~~


Available Sensor Plugins
~~~~~~~~~~~~~~~~~~~~~~~~

:IMU Sensor: Provides orientation feedback
:Sonar Sensors: Enable obstacle detection
:Camera Sensor: Optional visual input (configurable)
:Lidar Sensor: Optional laser scanning capability (configurable)

----

Running the Simulation
######################

Basic Simulation Launch
-----------------------

Step 1: Start Gazebo with Magni Model
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   # Launch empty world with Magni robot
   ros2 launch magni_description description.launch.py

Step 2: Verify Robot Spawning
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

After launching, verify the following:

- Gazebo simulator window opens with the Magni robot visible
- Robot model loads with correct visual and collision properties. You will see 2 windows: Gazebo and RViz
- Robot is positioned on the ground plane without falling through
- All joints and sensors initialize properly. check RViz for joint states and sensor data

Step 3: Check ROS2 Topics
~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   # List active topics
   ros2 topic list

Expected topics include:

.. code-block:: text

   /cmd_vel              # Velocity commands
   /odom                 # Odometry feedback
   /joint_states         # Joint position/velocity states
   /tf                   # Transform tree
   /scan                 # Laser scan data (if lidar enabled)
   /sonar_*              # Sonar sensor readings
   /battery_state
   /camera/camera_info
   /clicked_point
   /clock
   /controller_manager/activity
   /controller_manager/introspection_data/full
   /controller_manager/introspection_data/names
   /controller_manager/introspection_data/values
   /diagnostics
   /diff_drive_controller/cmd_vel
   /goal_pose
   /initialpose
   /parameter_events
   /robot_description
   /rosout
   /tf_static 


Teleoperation Testing
---------------------

Step 1: Launch Teleop Node
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   # Keyboard teleoperation
   ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args -p stamped:=true


Step 2: Robot Control Commands
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. table:: Keyboard Control Reference
   :widths: 20 80

   ======= ================================
   Key     Action
   ======= ================================
   i       Move forward
   ,       Move backward
   j       Turn left
   l       Turn right
   k       Stop
   u       Move forward with left turn
   o       Move forward with right turn
   m       Move backward with left turn
   .       Move backward with right turn
   ======= ================================

Troubleshooting
###############

Common Issues and Solutions
---------------------------

Issue 1: Robot Falls Through Ground
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:Problem: Robot model falls through the ground plane
:Cause: Missing collision properties in URDF model
:Solution: Verify collision tags are properly defined in robot description files

Issue 2: Wheels Not Moving
~~~~~~~~~~~~~~~~~~~~~~~~~~

:Problem: Robot wheels do not respond to velocity commands
:Cause: Joint controller configuration errors
:Solution: Check joint names in differential drive plugin match URDF joint definitions

Issue 3: Sensors Not Publishing Data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:Problem: Sensor topics show no data output
:Cause: Plugin configuration errors or missing parameters
:Solution: Verify sensor plugin parameters and confirm topic names are correct

Issue 4: Navigation Fails
~~~~~~~~~~~~~~~~~~~~~~~~~

:Problem: Robot navigation stack fails to function
:Cause: Transform tree issues or missing localization data
:Solution: Check TF tree integrity and ensure proper odometry publication

Performance Optimization
-------------------------

Graphics Settings
~~~~~~~~~~~~~~~~~

For improved simulation performance:

- Reduce Gazebo graphics quality settings
- Disable shadows and reflections when not required
- Lower physics update rate for non-real-time applications

System Resources
~~~~~~~~~~~~~~~~

Resource management recommendations:

- Monitor CPU and memory usage during simulation
- Close unnecessary applications to free system resources  
- Consider headless mode for automated testing scenarios

----

Development Guidelines
######################

Custom Sensor Integration
-------------------------

When adding new sensors to the Magni simulation:

1. **Update URDF:** Add sensor links and joints to robot description
2. **Configure Plugins:** Set appropriate Gazebo sensor plugins with correct parameters
3. **Test Integration:** Verify sensor data publication and topic connectivity
4. **Document Changes:** Update simulation documentation with new sensor capabilities

Controller Development
----------------------

For developing custom motion controllers:

1. **Interface Definition:** Define clear control inputs and feedback mechanisms
2. **ROS2 Integration:** Create appropriate ROS2 nodes and topic interfaces
3. **Simulation Testing:** Validate controller behavior in Gazebo before hardware deployment
4. **Parameter Tuning:** Optimize controller gains specifically for simulation environment

Validation Procedures
---------------------

Simulation Accuracy
~~~~~~~~~~~~~~~~~~~

Best practices for validation:

- Compare simulated robot behavior against real hardware performance
- Validate sensor readings and timing characteristics
- Test edge cases and failure mode scenarios

Performance Benchmarking
~~~~~~~~~~~~~~~~~~~~~~~~

Measurement guidelines:

- Measure simulation real-time factor under various conditions
- Profile computational requirements for different scenarios
- Document system limitations and performance boundaries

----

Support and Resources
#####################

Official Documentation
-----------------------

- `Ubiquity Robotics Documentation <https://ubiquityrobotics.github.io/learn2/>`_
- `ROS2 Wiki - Magni Robot <http://wiki.ros.org/Robots/Magni>`_
- `GitHub Repository <https://github.com/UbiquityRobotics/magni_robot>`_

Community Support
-----------------

- `ROS2 Discourse Forum <https://discourse.openrobotics.org/c/ng-ros>`_. (**You will need an Account**)
- `Ubiquity Robotics Community Forum <https://forum.ubiquityrobotics.com/>`_
- `GitHub Issues for bug reports and feature requests <https://github.com/UbiquityRobotics/ubiquity_main>`_

.. TODO: Change the link for GitHub Issues to a newer one.

Additional Resources
--------------------

- `Gazebo Simulation Tutorials <https://gazebosim.org/docs/harmonic/getstarted/>`_
- `ROS 2 Navigation Stack GitHub <https://github.com/ros-navigation/navigation2>`_
- `URDF Tutorials and Examples <http://wiki.ros.org/urdf/Tutorials>`_

----

.. note::

   This documentation is maintained by the Ubiquity Robotics simulation team. 
   For updates and contributions, please refer to the official repositories and documentation channels.

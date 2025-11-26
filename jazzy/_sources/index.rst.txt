Ubiquity Robotics Gen 6 Documentation
=====================================

Welcome to the Ubiquity Robotics Magni Gen 6 documentation!
This  guide will help you get started with your robot, from unboxing to driving, and provide resources you need to troubleshoot common issues.
Learn how to connect, operate, and interact with our robots, all in a step-by-step, beginner-friendly format.

.. important::

   This documentation applies **only** to Magni Gen 6 robots running **ROS 2 Jazzy**.

   For information about earlier robot generations, software images, or legacy systems, please refer to our `Legacy Documentation <https://learn.ubiquityrobotics.com>`_.

.. note:: 

    This documentation is designed for beginners.

    Expect clear, friendly instructions that guide you from unboxing your robot to running it smoothly.


Sections
########


- `Magni 6 Model Introduction <model_introduction_>`_: Introduction to our Magni 6 robots. This section highligets their key specifications and typical use cases to help you choose the right model for your needs.

|  

- `Waiting for Your Robot <requirements_>`_: Covers what you should do while waiting for your robot to arrive. System requirements, recommended preparations like buying the correct batteries, setting up your workstations and trying out the simulation environment. In this section our custom images are also introduced.

|  

- `Unboxing <unboxing_>`_: Step-by-step instructions for unboxing your robot. Learn how to safely unpack it, check for any damage, verify all components are included, install the batteries and power on the robot.

|  

- `Driving the Robot <driving_>`_: Learn how to operate your robot in the most basic way possible. How to drive it through Teleop and through our custom sofware EZ-Map.

|  

- `EZ-Map <ez_map_>`_: Our custom SLAM software for automating your robot. Includes installation, setup, and usage instructions.

|  

- `Troubleshooting <troubleshooting_>`_: Solutions to common hardware and software issues. Your first stop if you encounter problems.

----

.. _model_introduction:

.. toctree::
   :maxdepth: 2
   :caption: Magni 6 Model Introduction 

   models/magni6_mini
   models/magni6_midi

.. _requirements:

.. toctree::
   :maxdepth: 2
   :caption: Waiting for Your Robot 

   requirements/waiting_for_robot
   requirements/batteries
   requirements/workstation
   requirements/simulation
   requirements/images

.. _unboxing:

.. toctree::
   :maxdepth: 2
   :caption: Unboxing Your Model

   unboxing/unboxing_mini
   unboxing/unboxing_midi

.. _driving:

.. toctree::
   :maxdepth: 2
   :caption: Driving the Robot 
   
   driving/connecting
   driving/teleop
   driving/ez_map_simple_drive


.. _ez_map:

.. toctree:: 
   :maxdepth: 2
   :caption: EZ-Map 

   ez_map/ez_map_intro
   ez_map/ez_map_guide

.. _troubleshooting:

.. toctree:: 
   :maxdepth: 2
   :caption: Troubleshooting

   troubleshooting/hardware/lidars
   troubleshooting/hardware/rpi
   troubleshooting/hardware/pi_camera



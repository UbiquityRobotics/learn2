Magni 6 Mini
============

.. image:: /_static/models/magni6_mini.png
   :alt: Magni 6 Mini
   :width: 400px
   :align: center

|

The Magni 6 Mini is a compact, versatile robotic platform designed for educational, research and hobby applications. 
With its lightweight frame and modular design, it's perfect for indoor navigation, SLAM experiments, and small-scale automation projects.
Whether you're beginner or an avanced user, the Magni 6 Mini offers a perfect blend of portability, functionality, and ease of use.

Sneak peak of the Mini
######################

Explore the Magni 6 Mini in action with this video demonstration:

.. raw:: html

    <div style="display: flex; justify-content: center;"> 
        <iframe 
            width="560" height="315" 
            src="https://www.youtube.com/embed/Iw3Y6vlf8M0" 
            frameborder="0" 
            allowfullscreen 
            referrerpolicy="no-referrer-when-downgrade">
        </iframe>
    </div>

|

Overview
########

The Magni 6 Mini is the smallest model in the Magni 6 family. It offers balance of portability and functionality. 
It's compact and perfect for navigating tight indoor spaces while supporting advaned robotics tasks.

Key features include:
    - **Compact Design**: Easily maneuvers in confined areas, ideal for indoor environments like classrooms, labs, wide vents.
    - **Built-In LiDAR**: Equipped with a short-range LiDAR sensor for precise navigation and mapping.
    - **Software Compatibillity**: Supports ROS2, Open-RMF, and EZ-Map. This ensures seamless integration with other Magni 6 series robots for consistent workflows across the family.
    - **Transferable Skills**: Learn on the Magni 6 Mini and apply the same principles to operate all other Magni 6 robots.
    - **User-Friendly**: Suitable for beginners learning robotics and advanced users developing complex applications.


**Already got a Mini?**

Dive into our :doc:`../unboxing/unboxing_mini` guide to start unboxing your robot and to get it ready for driving.

Build Specifications
####################

The Magni 6 Mini is engineered for efficiency and compactness. Below are its core specifications:

==================  ================================
**Feature**         **Specification**
==================  ================================
Dimensions          245 mm x 222 mm x 198 mm
Weight              10kg (including 1240 battery)
Max Payload         [needs to be tested, around 10kg]
Frame               Metal Chasis
Wheels              Motor Wheel Controllers
Motor Control       Custom Magni 6 Motor Controller
Battery             1240 Battery
==================  ================================

Sensors
#######

The Magni 6 Mini comes equipped with essential sensors for navigation and interaction. 
It also has support for additional add-ons to expand functionality. 

**Built-in Sensors**:
    - :ref:`Short-range LiDAR <LiDAR_short_range>`
    - :doc:`Raspberry Pi Camera Wide <../troubleshooting/hardware/pi_camera>`

**Supported Add-ons**:
    - :doc:`Second Raspberry Pi Camera <../troubleshooting/hardware/pi_camera>`
    - :doc:`Sonars <../troubleshooting/hardware/sonars>`

.. TODO: Ask regarding the sonars.

.. note:: 

    For installing add-ons to the robot, please consult with us at `Ubiquity Robotics support <support@ubiquityrobotics.com>`_.


Projects
########

To explore the possibilites and capabilities of the Magni 6 Mini, try the following projects:

.. important:: 

    Our robot solutions are designed to be safe for use on a table. 
    However, we strongly recommend testing in a safe, obstacle-free environment to ensure smooth operation.

.. warning::
    
    While tabletop testing is generally safe, make sure there is enough space for the robot to move,
    and handle it carefully when driving to avoid accidents.


Room Mapping Starter 
~~~~~~~~~~~~~~~~~~~~

Create a 2D map of your environment using the short-range LiDAR and EZ-Map software. 
Ideal for learning SLAM basics.

Obstacle Avoidance
~~~~~~~~~~~~~~~~~~

Program the Magni 6 Mini to navigate around obstacles using the short-range LiDAR for proximity detection. 
Perfect for beginners experimenting with autonomous navigation.

Live Video Patrol
~~~~~~~~~~~~~~~~~

Use the Raspberry Pi Camera to stream live video, turning the Magni 6 Mini into a mobile surveillance bot. Great for remote monitoring.

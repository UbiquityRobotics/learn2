Introduction to EZ-Map
======================

|

.. image:: /_static/ez_map/ezmap_logo.png
   :alt: EZ-Map Logo
   :width: 400px
   :align: center 

|

Welcome to **EZ-Map**. 
This application will help you map a room using LiDAR, create routes for the robot to follow, and control the robot remotely with live video streaming.

.. raw:: html

    <div style="display: flex; justify-content: center;"> 
        <iframe 
            width="560" height="315" 
            src="https://www.youtube-nocookie.com/embed/r7kaECd3c0o"
            frameborder="0" 
            allowfullscreen 
            referrerpolicy="no-referrer-when-downgrade">
        </iframe>
    </div>

|

Setup 
#####

Before you begin, make sure you have the following ready: 

Magni robot
-----------

You'll need a Magni robot to run the software. 
If you haven't selected one yet, choose from our available models:

- :doc:`../models/magni6_mini`
- :doc:`../models/magni6_midi`

Once you have your robot, follow the corresponding unboxing and power-on guide in the navigation menu to complete the initial setup.

LiDAR Sensor
------------

EZ-Map requires a LiDAR for mapping, and all Magni robots come with one pre-installed.
We currently offer two LiDAR options:

- :ref:`Short Range LIDAR <lidar_short_range>` (Magni 6 Mini, and Magni 6 Midi)
- :ref:`Long Range LiDAR <lidar_long_range>` (Magni 6 Midi)

Other LiDAR sensors can be installed, but we recommend using the ones supplied with our robots. 
If you need help with alternative sensors or drivers, contact `Ubiquity Robotics support <support@ubiquityrobotics.com>`_.

.. note::

    EZ-Map ships with its own configuration files.
    If you've made manual changes to the robot software and EZ-Map no longer works, re-flash the original image before troubleshooting further.


Pi Camera
---------

Each Magni robot includes a Pi Camera for remote viewing and fiducial marker detection.
For more details, see :doc:`../troubleshooting/hardware/pi_camera`.

EZ-Map Software Image
---------------------

The EZ-Map software image is usually delivered via email. 
After downloading the `img.xz` file, flash it to a microSD card and insert it into the robot.

You can read more about our images on this page: :doc:`../requirements/images`.

If you encounter issues, reach out to `Ubiquity Robotics support <support@ubiquityrobotics.com>`_.

.. Changelogs
.. ----------

.. TODO: Change logs maybe.

Next up?
--------

Once you have all required items set up, continue to :doc:`./ez_map_guide` to explore EZ-Map's features.


EZ-MAP Guide
============

Getting started
############

Connecting to EZ-MAP
------------
To start using the EZ-MAP webapp you should first connect to the robot, see :doc:`./connecting` for details. Note down the robot's IP.

.. note::
    The primary targeted devices are smartphones and tablets since it's easier to follow the robot around with them, however almost all common phones, tablets and laptops should work.

The EZ-MAP interface is available on the webpage:

.. code-block:: bash

    http://<ROBOT-IP>:3000

.. warning::
   If you are connected to the robot using the access point, you will **not** have internet access. Therefore if you are using a device with enabled mobile data transfer, disable it before connecting since the mobile device won't route packets trough the robot by default. To use both the robot and the internet, switch to the local network option. See :doc:`../driving/connecting` for details.

Optional: Add to Home Screen
----------
.. note:: 
    The app can be used straight away, however saving it as a home screen app (See the image below) eliminates certain usage issues, so it is encouraged.

.. note:: 
    A guide for saving as a home screen app will be provided soon.


Initial setup
------------

.. |calibration_button| image:: /_static/ez_map/icons/calibrations.svg
   :alt: Image of the EZ-MAP calibration widget icon
   :width: 55px


When the robot first starts you’ll be asked to provide a location and orientation for your sensors. The process can also be skipped by opening and closing the menu once and can later accessed in the calibration menu (|calibration_button|).

.. image:: /_static/ez_map/calibration_and_sensor_setup.jpg
   :alt: Image of calibration page
   :width: 400px

|

This step is absolutely essential to make sure your robot is configured properly.

Menus and actions
-----------

The app contains a collection of submenus and actions represented by icons that are described in this section. The icons should always be visible somewhere in the app interface, however their size and location differs depending on the screen orientation. Since the design of EZ-MAP is modular, these can be added or removed, or you can even write your own custom ones.

.. image:: /_static/ez_map/icons/viewswitch_landscape.svg
   :alt: Image of the EZ-MAP view switch widget icon
   :width: 55px

Pressing it swaps the app main views, which are by default the camera video stream and the navigation system.

.. image:: /_static/ez_map/icons/100.svg
   :alt: Image of the EZ-MAP battery widget icon
   :width: 55px

Shows the percentage charge of the robot’s battery, when pressed shows a menu with voltage and percentage values. Note that lead acid batteries should not be deep cycled for best longevity (it's also best to keep them in the range of 50-100%, otherwise system issues can occur due to excessive voltage drops).

|calibration_button|

A collection of 3 different setup menus, that allow easy setup of the robot’s lidar, camera and wheels. This should ideally be done before use, to make sure the robot performs as expected.


.. image:: /_static/ez_map/icons/record_off.svg
   :alt: Image of the EZ-MAP record widget icon
   :width: 55px

Opens the menu that lets the user record all of the robot’s current internal data as a rosbag file (with an option for AVI video export) to an external USB drive (if plugged in) or onto the sd card. 


.. image:: /_static/ez_map/icons/photo.svg
   :alt: Image of the EZ-MAP photo widget icon
   :width: 55px

Takes a photo from the video stream and downloads it through the browser to your device directly. Warning, on some browsers it may override the current tab.

.. image:: /_static/ez_map/icons/settings.svg
   :alt: Image of the EZ-MAP settings widget icon
   :width: 55px

Opens a menu for all general robot settings: speed limits, controls, system power, etc.

.. image:: /_static/ez_map/icons/map_defaults_settings.svg
   :alt: Image of the EZ-MAP map defaults settings widget icon
   :width: 55px

Opens a menu that lets the user set default options for the map on EZ-MAP boot.

Unboxing and Setting Up the Magni 6 Mini
========================================

This guide walks you through unboxing your :doc:`../models/magni6_mini`, inspecting it for damages, and getting it ready to drive.

What You'll Achieve
###################

By the end of this guide, you'll have a working Magni 6 Mini robot that's ready to connect, drive and explore.

Unboxing
########

The Magni 6 Mini arrives in a package like this:

.. image:: /_static/unboxing/unboxing_mini.jpg
   :alt: Unboxing Magni 6 Mini
   :width: 400px
   :align: center 

|

Package Contents 
----------------

- **1x Magni 6 Mini Robot (pre-assembled)**
    
    .. image:: /_static/unboxing/magni6_mini_unboxed.jpg
        :alt: Unboxed Magni 6 Mini
        :width: 400px
        :align: center 

|

- **1x Battery Charger** (See: :doc:`../requirements/batteries` on how to charge.)

    .. image:: /_static/unboxing/magni_mini_charger.jpg
         :alt: Magni 6 Mini Battery Charger
         :width: 400px
         :align: center 

|


Initial Inspection
##################

Before powering on, check all components are included and undamaged.

1. Exterior
-----------

- **Lidar**

.. image:: /_static/unboxing/small_lidar.jpg
    :alt: Unboxed Magni 6 Mini
    :width: 400px
    :align: center 

- **Chassis**

.. image:: /_static/unboxing/outside_chasis.jpg
    :alt: Magni 6 Mini Chasis
    :width: 400px
    :align: center 

- **Motor Wheels**

.. image:: /_static/unboxing/motor_wheel.jpg
    :alt: Magni 6 Mini Motor Wheels
    :width: 400px
    :align: center 


2. Interior 
-----------

- Motor Controller Board

.. image:: /_static/unboxing/MCB.jpg
        :alt: Magni 6 Mini Motor Controller Board
        :width: 400px
        :align: center 

- PCB Connector 

.. image:: /_static/unboxing/.jpg
        :alt: Magni 6 Mini PCB Connecter
        :width: 400px
        :align: center 

- Raspberry Pi 

.. image:: /_static/unboxing/RPI5.jpg
        :alt: Magni 6 Mini Raspberry Pi
        :width: 400px
        :align: center 

- Pi Camera 

.. image:: /_static/unboxing/CameraModule3.png
        :alt: Magni 6 Mini Raspberry Pi Camera
        :width: 400px
        :align: center 

- All the necessary wires, listed in the images bellow.

.. image:: /_static/unboxing/.jpg
    :alt: Magni 6 Mini Wires
    :width: 400px
    :align: center 


3. Checklist
------------

 - Ensure all pre-assembled components are firmly connected:

    - MCB connected to Raspberry Pi 5 via the PCB connector.
    - Motor wheels connected to MCB.
 - Look for loose connector, cables, or wheels.

.. important:: 

    The robot is shipped pre-assembled, but verify all parts are secure.

Watch this video for a visual guide on checking component connections and condition after unboxing:

**CONTENT INCOMING**

.. TODO: Create a video for the check above, also add pictures there.

| 

If all components are securely connected and undamaged, proceed with adding the batteries in the robot.

.. Important:: 
    Upon receiving the package if any of the components:

    - Are missing,
    - Are not properly connected, 
    - or are damaged,

    contact us at `Ubiquity Robotics support <support@ubiquityrobotics.com>`_.


Battery Installation and Safety
###############################

The amgni 6 Mini uses two **lead-acid batteries**.
Ensure the Magni 6 Mini's these two batteries are safely installed and charged before powering on.
For for exact instructions on how to charge the batteries before adding them to ther robot: :doc:`../requirements/batteries`.

1. Inspect Batteries
--------------------

- Look for visible damages (cracks, swellng, or leaks).
- Do not use damaged batteries.

2. Install Batteries
--------------------

- Place both batteries inside the chassis.
- Connect them to the MCB, the switch, and to each other using the supplied cables.
- Ensure the connectio nis firm to avoid power issues.

.. image:: /_static/unboxing/batteries_with_no_wires.jpg
    :alt: Batteries inside the robot without wires
    :width: 400px
    :align: center

.. warning::
    **THE VOLTAGE CONNECTED TO THE MAIN CONTROL BOARD (MCB) MUST REMAIN 30.0V OR LESS AT ALL TIMES!**

The wires should be connected like this: 

.. image:: /_static/unboxing/wiring.jpg
    :alt: Wiring Harnesss
    :width: 400px
    :align: center

|

You can follow the following video for exact step-by-step guide of adding the batteries inside the robot:

**CONTENT INCOMING**

.. TODO: Video of adding the batteries inside the robot after unboxing.

3. Charging
-----------

- Use a multimeter to confirm voltage. Keep the batteries always charged.

.. image:: /_static/unboxing/.jpg
    :alt: Checking the batteries voltage inside the Robot
    :width: 400px
    :align: center

|

- Once the batteries are inside the robot use the provided charger to charge them.

     .. image:: /_static/unboxing/.jpg
        :alt: Charging the batteries inside the Robot 
        :width: 400px
        :align: center
|

You can follow the following video for exact step-by-step guide of charging the batteries inside the robot or manually:

**CONTENT INCOMING**

..  TODO: Video of charging the batteries inside the robot.

.. warning:: 
    - Do not use a damaged battery, as it may pose a safety hazard.
    - Charge in a well-ventilated area away from flammable materials.
    - See :doc:`../requirements/batteries` for more information.

Powering On
###########

1. Locate the **white power switch** at the back of the Magni 6 Mini and turn it on.

.. image:: /_static/unboxing/mini_whiteSwitch1.jpg
    :alt: White Switch on the Mini
    :width: 400px
    :align: center

|

2. Confirm the Raspberry Pi's **green LED** is visible. This indicates the robot is powered on.

.. image:: /_static/unboxing/rpi5_light_through_chasis.jpg
    :alt: Raspberry Pi Green Light through Chasis
    :width: 400px
    :align: center

|

You can follow the following video for exact step-by-step guide of powering on the robot. 

**CONTENT INCOMING**

..  TODO: Video of powering on the robot.

|

The robot is now powered on and ready for connection.

.. note:: 
    If the Raspberry Pi's light is not green, ensure all components are properly connected.

.. warning::

    Before messing with the hardware, switch the white switch off, to turn off the power to the robot.


Next Step: Connecting
#####################

Once powered, follow :doc:`../driving/connecting` to set up the connection between your robot and workstation.

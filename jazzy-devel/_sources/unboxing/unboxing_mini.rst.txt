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

|

- PCB Connector 

**IMAGE CONTENT INCOMING**

.. .. image:: /_static/unboxing/.jpg
..         :alt: Magni 6 Mini PCB Connecter
..         :width: 400px
..         :align: center 

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

**IMAGE CONTENT INCOMING**

.. .. image:: /_static/unboxing/.jpg
..     :alt: Magni 6 Mini Wires
..     :width: 400px
..     :align: center 


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
- Ensure the connection is firm to avoid power issues.


----- 

Install First Battery
~~~~~~~~~~~~~~~~~~~~~

   Position the first BATTERY in the BASE according to the pictures below. 
   Pay close attention to its orientation.

.. raw:: html

  <div class="rst-content">
    <div style="display: flex; gap: 10px;">
      <img src="/learn2/_static/unboxing/batteries_adding_first_one1.png" alt="Adding first battery to the robot upper pic 1." style="width: 50%; height: auto;">
      <img src="/learn2/_static/unboxing/batteries_adding_first_one2.png" alt="Adding first battery to the robot upper pic 2." style="width: 50%; height: auto;">
    </div>
  </div>

|

.. raw:: html

  <div class="rst-content">
    <div style="display: flex; gap: 10px;">
      <img src="/learn2/_static/unboxing/batteries_adding_first_one3.png" alt="Adding first battery to the robot lower pic 1." style="width: 50%; height: auto;">
      <img src="/learn2/_static/unboxing/batteries_adding_first_one4.png" alt="Adding first battery to the robot lower pic 2." style="width: 50%; height: auto;">
    </div>
  </div>

|

Install Second Battery
~~~~~~~~~~~~~~~~~~~~~~

   Use the BATTERY HOLDER to secure the second BATTERY in the BASE as shown in the picture.

.. raw:: html

  <div class="rst-content">
    <div style="display: flex; gap: 10px;">
      <img src="/learn2/_static/unboxing/batteries_adding_second_one1.png" alt="Adding second battery to the robot with battery holder pic 1." style="width: 45%; height: auto;">
      <img src="/learn2/_static/unboxing/batteries_adding_second_one2.png" alt="Adding second battery to the robot with battery holder pic 2." style="width: 55%; height: auto;">
    </div>
  </div>

|

Properly Adding the Second Battery
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
   Be careful with the wires.

.. image:: /_static/unboxing/batteries_minding_the_wires.png
    :alt: Adding second battery, being carefull with the wires.
    :width: 400px
    :align: center

|

Connect Batteries in Series
~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Attach the yellow-green wire: red connector to the RED spade of the first battery, black connector to the BLACK spade of the second battery.

.. note:: 
  Red connector from the wire goes to the RED spade of the first battery. Black connector of the wire goes to the black spade of the second battery.

.. raw:: html

  <div class="rst-content">
    <div style="display: flex; gap: 10px;">
      <img src="/learn2/_static/unboxing/batteries_connecting_in_series.png" alt="Connecting the batteries in series pic 1." style="width: 50%; height: auto;">
      <img src="/learn2/_static/unboxing/batteries_connected_in_series.png" alt="Connecting the batteries in series pic 2." style="width: 50%; height: 50%">
    </div>
  </div>

|

Connect Black Spade to Battery
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Take the wire harness and connect the black female spade terminal to the negative battery pin as shown in the picture. 
   Press it in firmly.

.. raw:: html

  <div class="rst-content">
    <div style="display: flex; gap: 10px;">
      <img src="/learn2/_static/unboxing/wire_harness_connector_for_battery1.png" alt="Wire harness with shown black connector." style="width: 50%; height: auto;">
      <img src="/learn2/_static/unboxing/batteries_wires_connected_to_first_battery.png" alt="Connecting the wires to the batteries." style="width: 50%; height: auto;">
    </div>
  </div>

|

Connect Black Spade to Ground
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Grab the only free black female spade connector and attach it to the GND pin on the CONNECTOR BOARD as shown in the picture.

.. raw:: html

  <div class="rst-content">
    <div style="display: flex; gap: 10px;">
      <img src="/learn2/_static/unboxing/wire_harness_connector_for_MCB2.png" alt="Wire black connector with green circle." style="width: 55%; height: auto;">
      <img src="/learn2/_static/unboxing/MCB_wire_harness_connected_to_MCB.png" alt="Wire black connector added to the MCB with green circle." style="width: 45%; height: auto;">
    </div>
  </div>

|

.. image:: /_static/unboxing/MCB_wire_harness_connected_to_MCB_preview.png
    :alt: Close up image of the wire to the MCB with green circle.
    :width: 400px
    :align: center

|


Connect Red Spade and Charger
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Attach the short RED spade connector to the positive battery pin (green circle). Connect the charger connector to the 5.5 x 2.1 mm DC POWER CHARGER (yellow circle). Finally connect the BLACK spade connector to the negative spade of the first battery (blue circle).

.. raw:: html

   <div style="display: flex; gap: 10px;">
     <img src="../_static/unboxing/wire_harness_connector_for_battery2.png" alt="Wires with green and yellow circle." style="width: 50%; height: auto;">
     <img src="../_static/unboxing/batteries_wires_connected_to_second_battery.png" alt="Wires connected to the battery with yellow and green circle. " style="width: 50%; height: auto;">
   </div>

|

Connect Red Spade to Switch
~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Attach the remaining red spade connector to the upper pin of the ON/OFF switch.

.. raw:: html

  <div class="rst-content">
    <div style="display: flex; gap: 10px;">
      <img src="/learn2/_static/unboxing/wire_harness_connector_for_switch.png" alt="Rest of the wires with green circle." style="width: 55%; height: auto;">
      <img src="/learn2/_static/unboxing/switch_spade_connector_for_wire.png" alt="ON/OFF SWITCH with green circle for upper spade connector." style="width: 45%; height: auto;">
    </div>
  </div>

|

47. **Connect Second Wire Harness**

   Use the wire harness with 3 red spade connectors. 
   Attach the split connector (yellow circle) to the bottom pin of the ON/OFF SWITCH.

.. raw:: html

  <div class="rst-content">
    <div style="display: flex; gap: 10px;">
      <img src="/learn2/_static/unboxing/wire_harness_connector_for_lower_spade_on_switch.png" alt="Second wire harness with green circle.." style="width: 55%; height: auto;">
      <img src="/learn2/_static/unboxing/switch_lower_spade.png" alt="ON/OFF SWITCH with green circle for lower spade connector." style="width: 45%; height: auto;">
    </div>
  </div>

|


Connect Remaining Spade Connectors
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Attach on red spade connector to the 12V pin on the CONNECTION BOARD and the other to the 12V pin on the MOTOR BOARD.

.. raw:: html

  <div class="rst-content">
    <div style="display: flex; gap: 10px;">
      <img src="/learn2/_static/unboxing/wire_harness_connectors_for_MCB_and_PCB.png" alt="Second wire harness with green and yellow circle." style="width: 40%; height: auto;">
      <img src="/learn2/_static/unboxing/spade_connectors_on_mcb_and_pcb.png" alt="MCB with green and yellow circle." style="width: 60%; height: auto;">
    </div>
  </div>

|

Verify Wiring
~~~~~~~~~~~~~

   Ensure all spade connectors are firmly attached. Route wires as shown.

.. Important::
  Double-check that all connections (all pins are firmly connected).

.. note:: 
  UPDATE of the WIRE ROUTING is coming soon.

.. TODO: Add image here without the wires being taped/secured to the second battery.

.. image:: /_static/unboxing/final_wiring.png
    :alt: Final wiring. 
    :width: 400px
    :align: center


----- 

.. warning::
    **THE VOLTAGE CONNECTED TO THE MAIN CONTROL BOARD (MCB) MUST REMAIN 30.0V OR LESS AT ALL TIMES!**

The wires should be connected like this: 

.. TODO: Add image of the wiring.

**IMAGE CONTENT INCOMING**

.. .. image:: /_static/unboxing/wiring.jpg
..     :alt: Wiring Harnesss
..     :width: 400px
..     :align: center

.. |

You can follow the following video for exact step-by-step guide of adding the batteries inside the robot:

**CONTENT INCOMING**

.. TODO: Video of adding the batteries inside the robot after unboxing.

3. Charging
-----------

- Use a multimeter to confirm voltage. Keep the batteries always charged.

.. TODO: Image of the voltage of the batteries. 

**IMAGE CONTENT INCOMING**

.. .. image:: /_static/unboxing/.jpg
..     :alt: Checking the batteries voltage inside the Robot
..     :width: 400px
..     :align: center

.. |

- Once the batteries are inside the robot use the provided charger to charge them.

.. TODO: Add the image for charging the robot with provided charger here.

**IMAGE CONTENT INCOMING**

..     .. image:: /_static/unboxing/.jpg
..        :alt: Charging the batteries inside the Robot 
..        :width: 400px
..        :align: center
.. |
..

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

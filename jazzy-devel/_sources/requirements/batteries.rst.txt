Batteries
=========

Shipping
########

.. note:: 

    The robots ship worldwide by air **without batteries**.
    This reduces shipping costs and avoids restrictions on transporting batteries.
    Lead acid batteries are easy to source locally.

The robots support different battery sizes. 
This allows users to choose between a long-endurance but heavier setup, or a lighter and more portable configuration.
Typical sources for suitable batteries include scooter, wheelchair, UPS, and automotive suppliers.

.. warning::

    **THE VOLTAGE CONNECTED TO THE MAIN CONTROL BOARD (MCB) MUST REMAIN 30.0V OR LESS AT ALL TIMES!**

What kind of Battery?
#####################

The batteries used in Magni 6 robots are sealed lead-acid (SLA) batteries.
These batteries are safe, maintanance-free, and don't leak, making them ideal for robotics.

Which Battery?
##############

For all of our robots we suggest using two identical 12V, lead acid batteries with F2 terminals, as these batteries are cheap and easy to find.  

.. TODO: Check the terminals F1 or F2.

---- 

Recommendation for batteries:

Magni 6 Mini
~~~~~~~~~~~~

The recommended batteries for **Magni 6 Mini are two identical 12V ~5Ah Sealed Lead Acid batteries**.

.. important:: 

    This list of equivalent batteries was written from an internet search. 
    It is not exaustive, definitve, or the primary reference, but merely a sample of compatible options.

Some equivalent batteries include:

- Fiamm 12FGH23
- Yuasa NP5-12
- PowerSonic PS-1250
- Universal Power UB1250
- CSB HR1221W F2 

.. image:: /_static/requirements/batteries/battery_small.png
   :alt: Small Battery 12V ~5Ah
   :width: 400px
   :align: center

|

As noted earlier, this list is only a sample of compatible options and is not exhaustive or definitive. 
Additional batteries that meet the voltage, capacity, and size requirements will also work with the robot.

Magni 6 Midi
~~~~~~~~~~~~

The recommended batteries for **Magni 6 Midi are two identical 12V ~12Ah Lead Acid Batteries**. 

.. important:: 

    This list of equivalent batteries was written from an internet search. 
    It is not exaustive, definitve, or the primary reference, but merely a sample of compatible options.

Some equivalent batteries include:

- Fiamm FG21202.
- CSB GP12120 
- Ritar RT12120 
- Yuasa NP12-12 (2.5 mm higher than the rest)

.. image:: /_static/requirements/batteries/battery_medium.png
   :alt: Medium Battery 12V ~12Ah
   :width: 400px
   :align: center

|

As noted earlier, this list is only a sample of compatible options and is not exhaustive or definitive. 
Additional batteries that meet the voltage, capacity, and size requirements will also work with the robot.

----

For the best battery choice, consult a local supplier.

Battery Specifications
######################

Mini 
~~~~

====================  ==================
**Feature**             **Details**
====================  ==================
Voltage                 12V
Capacity                ~5Ah (20h rate)
Terminals               F2 (6.3mm)
Size(LxWxH) approx.     90x70x101mm
Weight (approx.)        1.65-2kg
====================  ==================

Midi 
~~~~

====================  =================
**Feature**           **Details**
====================  =================
Voltage               12V
Capacity              ~12Ah (20h rate)
Terminals             F2 (6.3mm)
Size(LxWxH) approx.   151x98x95mm
Weight (approx.)      3.8-4.0kg
====================  =================

Charging
########

.. warning::

    The stock battery charger we supply is **ONLY FOR LEAD ACID** batteries and will not work and in fact may be dangerous for other battery technologies.
    As the system is designed for lead acid batteries if you use anything else the battery state topic could give misleading numbers as to the true battery state. 
    This will not affect the ability of the robot to drive properly.

How to charge?
~~~~~~~~~~~~~~

To charge the batteries, follow these steps:

1. **Check Your Robot's Documentation**: Refer to the documentation for specific charging instructions, as different models have different requirements.
2. **Use a Compatible Charger**: Use the designated 24V lead-acid charger provided with your Magni 6 robot, or ensure any replacement charger is rated for 24V AGM VRLA batteries.
3. **Charging Method**:
    - **Using Designated Charger**:
        - Locate the charger port (varies by model: Mini, Midi).
        - Remove the port cap.
        - Plug the charger into the wall socket, then connect the connector (inner pin positive, outer sleeve negative) to the charger port.
    - **Manual Separate Charging**:
        - Disconnect both batteries from the robot.
        - Take both batteries out of the robot.
        - Charge each 12V battery individually using a 12V lead-acid charger or a :ref:`Power Supply <charge_power_supply>`.
    - **Manual Series Charging**: 
        - Disconnect batteries from circuits.
        - Take them out of the robot. 
        - Keep them connected in series (positive of first battery connected to negative of second battery)
        - Charge the batteries 
        - Charge both batteries together connected in series by using 24V lead-acid charger or a :ref:`Power Supply <charge_power_supply>`.
4. **Charge Time**: Charge time will vary depending on the robot and batteries. 
    - When charging with our charger, check the LED: **GREEN** = fully charged, **RED** = charging.
    - When charging with Power Supply with upper bound on voltage and constant current charge until supply switches from constant current to constant voltage and the current drops to 0.05 A.

    .. TODO: Check this with the charger and the LED. It has LED but does it make sense.

5. **Safety Tips**: 
    - Charge in a well-ventilated area.
    - When manually charging the robot, avoid overcharging.
    - Do not use or charge a damaged battery.
    - Check the polarity. 

.. important:: 

    Verify the polarity (inner pin positive, outer sleeve negative) before connecting.

.. TODO: Check this positive, negative whether it is correct.

.. warning::

    Incorrect charging can damage the batteries or pose safety risks.
    Always follow the manufacturer's instructions. Every battery has relevant information on the side.

.. _charge_power_supply:

Charging with Power Supply
~~~~~~~~~~~~~~~~~~~~~~~~~~

Charging with a Power Supply depends on both the battery capacity and the number of batteries connected.

For a single 12V, ~5Ah battery, use a charging voltage of around 14V with a current of about 0.5 A(5Ah / 10).
For safer, slower charging, set the current slightly lower at 0.44~0.46A.

When charging multiple batteries in series, the required voltage increases proportionally (two batteries: ~27-28V),
but the charging current should remain at 0.45-0.5 Ah.
Higher current can be used for faster charging, but never exceed the manufacturer's specified maximum current rating. 

.. important::

    This section assumes you have a power supply equivalent to PCWork PCW07A Power Supply.

    The guide also assumes that you are using one of the lead acid batteries listed above.


.. Typical Current Draw
.. ####################

.. Typical Current Draw for Mini
.. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. .. TODO: Add the table content. 

.. **THE FOLLOWING INFORMATION IS PLANNED FOR FUTURE TESTING. FOR SPECIFIC INQUIRES:** `Ubiquity Robotics support <support@ubiquityrobotics.com>`_.

.. +------------------------------------------------------------+-----------------+
.. | Operating State                                            | Current (Amps)  |
.. +============================================================+=================+
.. | Stationary, Pi4/Pi5 (4GB) only, motors off                 | [to be tested]  |
.. +------------------------------------------------------------+-----------------+
.. | Driving, flat surface, ~0.5 m/s, no load                   | [to be tested]  |
.. +------------------------------------------------------------+-----------------+
.. | Rotating in place, no load                                 | [to be tested]  |
.. +------------------------------------------------------------+-----------------+
.. | Stationary, motors powered                                 | [to be tested]  |
.. +------------------------------------------------------------+-----------------+
.. | Stationary, pushing wheels (fighting torque, no slipping)  | [to be tested]  |
.. +------------------------------------------------------------+-----------------+
.. | Locked wheels, applying strong torque                      | [to be tested]  |
.. +------------------------------------------------------------+-----------------+


.. Typical Current Draw for Midi
.. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. .. TODO: Add the table content. 

.. **THE FOLLOWING INFORMATION IS PLANNED FOR FUTURE TESTING. FOR SPECIFIC INQUIRES:** `Ubiquity Robotics support <support@ubiquityrobotics.com>`_.

.. +------------------------------------------------------------+-----------------+
.. | Operating State                                            | Current (Amps)  |
.. +============================================================+=================+
.. | Stationary, Pi4/Pi5 (4GB) only, motors off                 | [to be tested]  |
.. +------------------------------------------------------------+-----------------+
.. | Driving, flat surface, ~0.5 m/s, no load                   | [to be tested]  |
.. +------------------------------------------------------------+-----------------+
.. | Rotating in place, no load                                 | [to be tested]  | 
.. +------------------------------------------------------------+-----------------+
.. | Stationary, motors powered                                 | [to be tested]  |  
.. +------------------------------------------------------------+-----------------+
.. | Stationary, pushing wheels (fighting torque, no slipping)  | [to be tested]  | 
.. +------------------------------------------------------------+-----------------+
.. | Locked wheels, applying strong torque                      | [to be tested]  |  
.. +------------------------------------------------------------+-----------------+

.. .. note:: 

..     - Instantaneous peaks can exceed 10A but are transient and not useful for battery.
..     - Driving uphill or with heavy loads increases draw further.


Capacity and Aging 
##################

.. important::

    The Magni robots cannot detect battery health or age.
    Percantage values are based on *new batteries*.
    Over time, lead acid batteries lose capacity and may never again charge to "100%".

Key points:

1. Do not run the robot below **50% capacity (~24V for 24V system, ~12V per cell)**
   Deep discharge causes sulfation and shortents lifespan. 
   The robot must be fully powered off at the MCB switch, not just via Pi shutdown.

2. The MCB cuts off power at ~20V to prevent total discharge.

3. Old or damaged cells may **gas (rotten egg smell)** if left on charge. 
   Disconnect charger once charging is complete in these cases. 

4. The MCB draws ~0.04W (1-2mA at 24V) even when off.
   For storage longer than 3 weeks, **disconnect at least one battery lead**.


Charge Capacity Reference Table
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

=============  =======================  ===============
**Capacity**   **24V System Voltage**   **12V Battery**
=============  =======================  ===============
100%           26.0 V                   13.0 V
90%            25.5 V                   12.75 V
80%            25.0 V                   12.50 V
70%            24.60 V                  12.30 V
60%            24.30 V                  12.15 V
50%            24.10 V                  12.05 V
40%            23.9 V                   11.95 V
30%            23.62 V                  11.81 V
20%            23.32 V                  11.66 V
10%            23.02 V                  11.51 V
0%             21.0 V                   10.50 V
=============  =======================  ===============

.. note::

    For more detail see: `Batterystuff Lead Acid Battery Basics <https://www.batterystuff.com/kb/articles/battery-articles/battery-basics.html>`_

.. important::

    If you are unsure about any aspect of battery selection or charging, consult a professional or contact `Ubiquity Robotics support <support@ubiquityrobotics.com>`_.


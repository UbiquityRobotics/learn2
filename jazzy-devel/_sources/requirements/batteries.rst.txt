Batteries
=========

Shipping
########

.. note:: 
    The robot ships worldwide by air **without batteries**.
    This reduces shipping costs and avoids restrictions on transporting batteries.
    Lead acid batteries are easy to source locally.

The robot supports different battery sizes. 
This allows users to choose between a long-endurance but heavier setup, or a lighter and more portable configuration.
Typical sources for suitable batteries include scooter, wheelchair, UPS, and automotive suppliers.


.. warning::
    **THE VOLTAGE CONNECTED TO THE MAIN CONTROL BOARD (MCB) MUST REMAIN 30.0V OR LESS AT ALL TIMES!**

What kind of Battery?
#####################

The batteries used in Magni 6 robots are sealed lead-acid (SLA) batteries, specifically Absorbent Glass Mat (AGM) Valve-Regulated Lead-Acid (VRLA) types. 
These batteries are safe, maintanance-free, and don't leak, making them ideal for robotics.

Which Battery?
##############

We recommend using two identical 12V, 5Ah AGM VRLA batteries with F2 termninals, such as Fiamm 12FGH23 or equivalents.
Some equivalent batteries include:

- Yuasa NP5-12
- PowerSonic PS-1250
- Universal Power UB1250
- CSB HR1221W F2 

.. important:: 
    This list of equivalent batteries was written from an internet search. 
    It is not exaustive, definitve, or the primary reference, but merely a sample of compatible options.

For the best battery choice, consult a local supplier.

Battery Specifications
######################

+-------------------+-------------+
| Feature           | Details     |
+===================+=============+
| Voltage           | 12V         |
+-------------------+-------------+
| Capacity          | 5Ah         |
+-------------------+-------------+
| Type              | AGM VRLA    |
+-------------------+-------------+
| Terminals         | F2 (6.3mm)  |
+-------------------+-------------+
| Size (approx.)    | 90x70x101mm |
+-------------------+-------------+
| Weight (approx.)  | 2kg         |
+-------------------+-------------+


Charging
########

.. important::
    The stock battery charger we supply is **ONLY FOR LEAD ACID** batteries and will not work and in fact may be dangerous for other battery technologies.
    As the system is designed for lead acid batteries if you use anything else the battery state topic could give misleading numbers as to the true battery state. 
    This will not affect the ability of the robot to drive properly.

How to charge?
--------------

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
        - Charge each 12V battery individually using a 12V lead-acid charger.
    - **Manual Series Charging**: 
        - Disconnect batteries from robot circuits, keeping them connected in series (positive of first to negative of second).
        - Use a 24V lead-acid charger, connecting positive to the second battery's positive terminal and negative to the first battery's negative terminal.
4. **Charge Time**: Charge time will vary depending on the robot and batteries. 
    - When charging with our charger, check the LED: **GREEN** = fully charged, **RED** = charging.
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


Typical Current Draw
####################

Typical Current Draw for Mini
-----------------------------

.. TODO: Add the table content. 

**TABLE CONTENT INCOMING**

+------------------------------------------------------------+-----------------+
| Operating State                                            | Current (Amps)  |
+============================================================+=================+
| Stationary, Pi4/Pi5 (4GB) only, motors off                 |                 |
+------------------------------------------------------------+-----------------+
| Driving, flat surface, ~0.5 m/s, no load                   |                 |
+------------------------------------------------------------+-----------------+
| Rotating in place, no load                                 |                 |
+------------------------------------------------------------+-----------------+
| Stationary, motors powered                                 |                 |
+------------------------------------------------------------+-----------------+
| Stationary, pushing wheels (fighting torque, no slipping)  |                 |
+------------------------------------------------------------+-----------------+
| Locked wheels, applying strong torque                      |                 |
+------------------------------------------------------------+-----------------+


Typical Current Draw for Midi
-----------------------------

.. TODO: Add the table content. 

**TABLE CONTENT INCOMING**

+------------------------------------------------------------+-----------------+
| Operating State                                            | Current (Amps)  |
+============================================================+=================+
| Stationary, Pi4/Pi5 (4GB) only, motors off                 |                 |
+------------------------------------------------------------+-----------------+
| Driving, flat surface, ~0.5 m/s, no load                   |                 |
+------------------------------------------------------------+-----------------+
| Rotating in place, no load                                 |                 |
+------------------------------------------------------------+-----------------+
| Stationary, motors powered                                 |                 |
+------------------------------------------------------------+-----------------+
| Stationary, pushing wheels (fighting torque, no slipping)  |                 |
+------------------------------------------------------------+-----------------+
| Locked wheels, applying strong torque                      |                 |
+------------------------------------------------------------+-----------------+

.. note:: 
    - Instantaneous peaks can exceed 10A but are transient and not useful for battery.
    - Driving uphill or with heavy loads increases draw further.


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
-------------------------------

+----------+----------------------+-------------------+
| Capacity | 24V System Voltage   | 12V Battery       |
+==========+======================+===================+
| 100%     | 25.77 V              | 12.89 V           |
+----------+----------------------+-------------------+
| 90%      | 25.56 V              | 12.78 V           |
+----------+----------------------+-------------------+
| 80%      | 25.31 V              | 12.65 V           |
+----------+----------------------+-------------------+
| 70%      | 25.02 V              | 12.51 V           |
+----------+----------------------+-------------------+
| 60%      | 24.81 V              | 12.41 V           |
+----------+----------------------+-------------------+
| 50%      | 24.45 V              | 12.23 V           |
+----------+----------------------+-------------------+
| 40%      | 24.21 V              | 12.11 V           |
+----------+----------------------+-------------------+
| 30%      | 23.91 V              | 11.96 V           |
+----------+----------------------+-------------------+
| 20%      | 23.61 V              | 11.81 V           |
+----------+----------------------+-------------------+
| 10%      | 23.40 V              | 11.70 V           |
+----------+----------------------+-------------------+
| 0%       | 23.25 V              | 11.63 V           |
+----------+----------------------+-------------------+


.. note::
    For more detail see: `Batterystuff Lead Acid Battery Basics <https://www.batterystuff.com/kb/articles/battery-articles/battery-basics.html>`_


.. important::
    If you are unsure about any aspect of battery selection or charging, consult a professional or contact `Ubiquity Robotics support <support@ubiquityrobotics.com>`_.


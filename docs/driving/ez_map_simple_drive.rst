Driving the robot through EZ-Map
################################

.. TODO: Some short introduction to what EZ-Map even is?

To drive the robot using the EZ-Map webapp you should follow the steps:

1. Ensure that you are connected to the robot, check :doc:`./connecting` for details. Note down the robot's IP, as you will need it to connect to EZ-Map.
2. Ensure the robot's wheels are locked, meaning you are not able to manually push the robot around.
3. The EZ-Map webapp should be accessible through the browser by typing in the address:

.. code-block:: bash

    http://<ROBOT-IP>:3000

.. warning::
    
    Place the robot on the ground before driving to prevent it from falling off a table.

    Our robots are meant to be table-top robots and we take measures against this, however the risk is always there.

.. image:: /_static/ez_map/ezmap_full_page.png
    :alt: EZ-Map webapp being shown on a computer screen
    :align: center

|

.. image:: /_static/ez_map/ezmap_full_page_portrait.jpg
    :alt: EZ-Map webapp being shown on a phone in portrait mode
    :width: 300px
    :align: center

|

4. In the images above you can see how EZ-Map will look. You will either see:

- Two joysticks, when connecting from a computer or phone in landscape mode (seen in the top image).

  Use the left joystick to move the robot forwards and backwards. Use the right joystick to rotate the robot.

- Dedicated buttons for all directions, when connecting from a phone in portrait mode (seen in the bottom image).

----

Congratulations! You have successfully driven the robot using EZ-Map. To learn more see the general introduction to EZ-Map :doc:`../ez_map/ez_map_intro`.

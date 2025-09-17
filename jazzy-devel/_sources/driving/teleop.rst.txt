Driving the robot using Terminal
================================

To drive the robot using the terminal you must fulfill the following requirements: 

1. Ensure the robot is powered on.
2. Open one terminal session that is connected to the robot (via SSH), check :doc:`./connecting` for details.
3. Wait for the robot to activate the MCB, this will lock the robot wheels, and you will not be able to manually push the robot anymore.

.. TODO: Add video for this. 

**VIDEO CONTENT INCOMING**

.. warning:: 

    Place the robot on the ground before driving to prevent it from falling off a table.

    Our robots are meant to be table-top robots and we take measures against this, however the risk is always there.
    

4. In the terminal (the one already connected to the robot), run the following command:

.. code-block:: bash

    ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args --remap cmd_vel:=mcb/cmd_vel


**IMAGE CONTENT INCOMING**

.. .. image:: /_static/magni-mini/getting_started/.jpg
..     :alt: Terminal with teleop shown
..     :width: 400px
..     :align: center


5. Focus the terminal and follow the teleop instructions to drive the robot. 


You can follow the next video for exact step-by-step guide of driving the robot through Teleop: 

**VIDEO CONTENT INCOMING**

..  TODO: Video of driving the robot.


----

Congratulations! You have successfully driven the robot using the terminal.

If you prefer a graphical interface, follow our next guide :doc:`./ez_map_simple_drive` to learn how to control the robot using the EZ-Map UI.

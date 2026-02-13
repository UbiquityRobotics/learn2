Driving the robot using Terminal
================================

To drive the robot using the terminal you must fulfill the following requirements: 

1. Ensure the robot is powered on.
2. Open one terminal session that is connected to the robot (via SSH), check :doc:`./connecting` for details.
3. Wait for the robot to activate the MCB, this will lock the robot wheels, and you will not be able to manually push the robot anymore.

.. note:: 

    If the robot's wheels don't lock automatically, manually lock them by pressing the button on the Motor Control Board (MCB).
    It's the button closest to the wire connector.

    .. image:: /_static/driving/teleop/enable_MCB.jpg
        :alt: Enable the MCB button
        :width: 400px
        :align: center

.. TODO: Add video for this. 

.. **Coming soon:** step-by-step video tutorial.

.. warning:: 

    Place the robot on the ground before driving to prevent it from falling off a table.

    Our robots are meant to be table-top robots and we take measures against this, however the risk is always there.
    

4. In the terminal (the one already connected to the robot), run the following command:

.. code-block:: bash

    ros2 run teleop_twist_keyboard teleop_twist_keyboard 

.. TODO: Add the image how the teleop looks like. 

.. .. image:: /_static/magni-mini/getting_started/.jpg
..     :alt: Terminal with teleop shown
..     :width: 400px
..     :align: center

5. Focus the terminal and follow the teleop instructions to drive the robot. 

.. note:: 

    If the wheels are locked but the robot does not respond to teleoperation commands, restart the MCB by pressing the middle button.
    After that you can try driving the robot with teleop again.

    .. image:: /_static/driving/teleop/restart_MCB.jpg
        :alt: Restart the MCB button
        :width: 400px
        :align: center

    |

    If the wheels fail to lock afterward, repeat the manual wheel-locking procedure above.

..  TODO: Video of driving the robot. Once it is done, uncomment the line bellow and add the video.

.. You can follow the next video for exact step-by-step guide of driving the robot through Teleop: 

.. **Coming soon:** step-by-step video tutorial.

----

Congratulations! You have successfully driven the robot using the terminal.

If you prefer a graphical interface, follow our next guide :doc:`./ez_map_simple_drive` to learn how to control the robot using the EZ-Map UI.

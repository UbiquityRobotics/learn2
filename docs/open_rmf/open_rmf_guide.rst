Open-RMF Guide
==============

This section provides a detailed walkthrough of our Web Dashboard. 
We will begin with the core concepts, followed by an overview of the main features and instructions on how to use them effectively.

Core Concepts
#############

Fleet
-----

A fleet represents a group of robots that share common capabilities and are managed through a single fleet adapter.

Task
----

A task represents a unit of work assigned to a robot, such as navigation, delivery, or inspection.

Traffic Scheduling
------------------

Traffic scheduling ensures that robots move through shared spaces without collisions or deadlocks. RMF coordinates robot paths using time-based schedules rather than direct robot-to-robot communication.

Shared Resources
----------------

Resources such as doors, lifts, and narrow corridors are managed centrally to prevent conflicts between robots from different fleets.


Core dashboard features
#######################

This subsection describes the main features of the web dashboard.

The dashboard currently supports the following features:

- **Move To** - Sends a robot or an entire fleet to a user-defined location on the map.
- **Patrol** - Commands a robot or a fleet to continuously patrol between user-defined waypoints.
- **Delivery** - Directs a robot to a specified pickup location, collects and item, and delivers it to a user-defined drop-off point.


.. TODO: Let's think how we want to show this to users. 

.. Do we want to have it here, which will make this page too long. Or do we want to have a single page per feature.
.. Single page per feature makes more sense to me as we can explain each feature in details and show it with pictures and videos. 


Map Page
########

Maps define the physical environment in which robots operate and determine where they can move and navigate.
Each map is created outside the dashboard using standard ROS-compatible tools and represents a real-word environment.

A map consists of an occupancy grid image and a corresponding YAML file, which together define scale, coordinates, and obstacles.
White areas represent free space, black areas indicate obstacles, and gray areas mark unknown or restricted regions.

Predefined points of interest, such as waypoints and task locations, are stored with the map and visualized in the dashboard.
For multi-level environments, different map levels are displayed in separate quadrants of the grid-based map.

Maps are assigned unique names and are linked to robots through fleet configuration files.
When the system starts, the appropriate map is loaded automatically, and robots are placed and aligned correctly within the environment, allowing their positions and movements to be monitored in real time on the map.

This design allows maps to be reused, updated, and added without modifying dashboard or task logic.

.. TODO: Add an images here for more clarity.

Scanning a Real-World Location and Uploading a Map
--------------------------------------------------

Information regarding scanning a map and uploading it to the dashboard coming soon.

.. TODO: Add additional explanation for this part and pictures for clarity.


Controlling the Fleet Manager 
#############################

Add a robot to the fleet manager
--------------------------------

Robots are added to the system through the fleet configuration file.
This file defines which robots exist, which fleet they belong to, and how they appear and behave on the map.
Robots are not added manually through the user interface.
Instead, they are registered automatically when the system starts by reading this configuration.

The fleet configuration describes a fleet, which is a group of robots that share the same motion limits, battery model, and task capabilities.
Once the fleet is loaded, all robots defined inside it become visible on the map and available for task assignment.

Each fleet has a unique name and a set of shared parameters such as maximum speed, robot size, battery capacity, and supported task types (for example delivery, patrol, or go-to-place). These settings apply to all robots in the fleet and ensure consistent behavior across the system.

At the end of the fleet configuration file, there is a dedicated section called ``robots``.
This section is where individual robots are defined.
Each robot entry represents a single physical or simulated robot and includes its name, charger assignment, initial map, coordinate frames, and the map file it should use.

.. TODO: a yaml code block here can be to visualize how this looks.

To add a robot to the map, a new robot entry is simply added under the ``robots`` section.
Once this entry exists, the robot automatically becomes part of the fleet.
When the system starts, the robot loads the specified map, initializes its position, and appears on the map interface without any additional manual steps.

.. TODO: A screenshot visualizing this can be added for the above paragraph for more clarity.

Multiple robots can be added by listing them one after another in the same section.
All robots defined in this way are automatically registered, displayed on the map, and made available to receive tasks.
No changes to the map file or the user interface are required.

This configuration-based approach ensures that robot deployment is reliable, repeatable, and scalable.
Robots can be added, removed, or updated in a single central file, making it easy to manage fleets across different environments such as simulation, testing, and real-world deployment.

In summary, to add a robot to the map, you only need to define it in the fleet configuration file under the ``robots`` section.
After restarting the system, the robot will automatically appear on the map and be ready for operation.


Remove a robot from the fleet manager
-------------------------------------

To remove a robot from the fleet manager, follow the same steps as adding it, but instead of adding the robot to the ``robots`` section of the configuration file, simply delete its entry.

.. TODO: Screenshots of this for clarity.

Task List
#########

This page displays all user-defined tasks assigned to robots or fleets.
You can view the progress of each task, the current location of the robot or fleet, and the estimated time of arrival (ETA).
Individual tasks can be selected and cancelled directly from this page.

Robots List
###########

This page shows all robots registered in the fleet manager.
For each robot, you can see its current location, battery level, operation status (e.g. moving or idle), and the fleet it belongs to.
You can also open the diagnostics page for more detailed information about a specific robot.

Diagnostics
-----------

This subpage provides detailed information about the selected robot.
It includes battery status, active ROS 2 topics, running nodes, and other critical data needed for monitoring, diagnosing, and controlling the robot.

Doors and Lifts
###############

This page displays all doors and lifts available within the mapped environment.
You can monitor and control them directly from the dashboard.
Rules can be configured to define when doors or lifts should open or move, based on specific robot actions and conditions.

Configuration
#############

This page allows you to configure the web dashboard.
You can switch between light and dark mode, and update your account details such as name, email, and password.

----

Feedback
########

If you encounter any issues with the dashboard or robot control, you can use the feedback page.
Provide your contact information, select the affected robot and software component, and describe the issue in detail.

Our team will review your report and get back to you as soon as possible.


.. TODO: Here we can also add commuinication email.


----

Next Steps
##########

With an understanding of the core concepts and features of the Web Dashboard, you can now start using it to manage your own robot fleets.
For a deeper dive into the implementation of thee features, see the advanced guide: :doc:`open_rmf_advanced`.

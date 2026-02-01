Introduction to Open-RMF
========================

General Overview
################

**OpenRMF (Open Robot Middleware Framework)** is an open-source framework that coordinates multiple robots and automation systems operating in shared environments such as hospitals and warehouses.
It manages traffic, scheduling, and interoperability, allowing robots from different vendors to operate together without collisions or resource conflicts. 

By centralizing coordination, OpenRMF reduces the need for manual oversight, prevents traffic jams between robots, and scales smoothly as more robots are added.
This turns otherwise complex and split multi-robot deployments into a predictable, efficient, and manageable system.

We use OpenRMF through our own Web Dashboard, utilizing OpenRMF's APIs, along with fleet managers.
The dashboard provides a centralized interface for monitoring and controlling the system, while the fleet managers integrate individual robot fleets and handle communication between OpenRMF and each robot.

Web Dashboard
#############

The **OpenRMF Web Dashboard** is a web-based application that enables users to authenticate, view system state, and perform authorized actions from a single centralized interface. 
Its purpose is to provide operators and administrators with a clear and accessible way to interact with OpenRMF services without needing direct access to backend systems.
By combining information and controls into one interface, the dashboard simplifies system management.

The dashboard is designed for environments where multiple robots from one or more fleets must operate in shared spaces.
In such systems, robots need to coordinate movement, tasks, and access to shared resources such as doors, lifts, and corridors.
OpenRMF provides the coordination layer for these multi-robot systems, building on ROS2 to enable interoperability between heterogenous robot fleets and infrastructure systems.

In simple terms, the dashboard serves as the human-facing interface on top of OpenRMF, allowing operators to observe system state and interact with fleets without needing to work directly with low-level robotic middleware.

Fleet Manager
#############


The **Fleet Manager** acts as the bridge between OpenRMF and individual robot fleets. 
It translates OpenRMF commands into vendor-specific instructions for each robot. 
It collects status updates, and reports back to the system. 
By doing so, it enables coordinated operation across heterogenous fleets, ensures safe navigation, and allows multiple robots to share tasks and resources efficiently within the same environemnt.


Extra Resources
###############

To learn more about OpenRMF and ROS2 consider the following resources:

- `OpenRMF Website <https://www.openrmf.io/>`_
- `OpenRMF Official Documentations <https://cingulara.github.io/openrmf-docs/>`_
- `ROS2 Jazzy Documentation <https://docs.ros.org/en/jazzy/index.html>`_
- `OpenRMF + ROS2 Guide <https://osrf.github.io/ros2multirobotbook/>`_


Next Steps
##########

Get started with our **Web Dashboard** by following the documentation: :doc:`./open_rmf_guide`.
It covers adding robots to fleets, setting up maps and areas, and using all dashboard features.


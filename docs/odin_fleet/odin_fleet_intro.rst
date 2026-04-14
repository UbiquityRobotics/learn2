Introduction to OdinFleet
=========================

General Overview
################

**OdinFleet is an application built on top of OpenRMF (Open Robot Middleware Framework)**.
**OpenRMF** is an open-source framework designed to coordinate multiple robots and automation systems in shared environments. 

OdinFleet provides a user-friendly interface for traffic managements, scheduling, and interoperability.
This enables robots from different vendors to operate together without collisions or resource conflicts.
Through our custom web dashboard, it offers clear system visibility and simplifies interaction with the entire fleet.

By utilizing OpenRMF's APIs, OdinFleet serves as a practical tool for monitoring and controlling multiple robot fleets while improving communication between users and systems.
It uses RMW Zenoh to ensure fast and efficient communication across all components.

Managing multiple robots has never been easier.


Web Dashboard
#############

**OdinFleet's Web Dashboard** is a custom web application that allows users to authenticate, monitor system state, and perform actions from a single interface.

Its goal is to provide a clear and accessible way to interact with robot fleets and automation systems without dealing with multiple backend tools.
By combining controls and system data in one place, it simplifies overall fleet management.

The dashboard enables visualization of all robot fleets and their tasks, supports task dispatching and cancellation, and provides a live map view showing each robot's position within the environment.

It gives centralized, real-time control over multiple robot operating in the same space.


Fleet Manager
#############

The **Fleet Manager** acts as the bridge between OdinFleet and individual robot fleets. 
It translates OdinFleet commands into vendor-specific instructions for each robot. 
It collects status updates, and reports back to the system. 
By doing so, it enables coordinated operation across heterogeneous fleets, ensures safe navigation, and allows multiple robots to share tasks and resources efficiently within the same environment.


RMW Zenoh
#########

RMW Zenoh is the communication layer used by OdinFleet to enable fast and efficient data exchange between robots and the system. 
It provides low-latency, scalable messaging across distributed components, even ii complex network setups.
This ensures reliable real-time communication between fleets, services, and users.


Extra Resources
###############

To learn more about OpenRMF, ROS2, and Zenoh consider the following resources:

- `OpenRMF Website <https://www.openrmf.io/>`_
- `OpenRMF Official Documentations <https://cingulara.github.io/openrmf-docs/>`_
- `ROS2 Jazzy Documentation <https://docs.ros.org/en/jazzy/index.html>`_
- `OpenRMF + ROS2 Guide <https://osrf.github.io/ros2multirobotbook/>`_
- `Zenoh Official Documentation <https://zenoh.io/docs/overview/what-is-zenoh/>`_


Next Steps
##########

Get started with our **Web Dashboard** by following the documentation: :doc:`./odin_fleet_guide`.
It goes through the key features for monitoring and controlling robots through the dashboard.   


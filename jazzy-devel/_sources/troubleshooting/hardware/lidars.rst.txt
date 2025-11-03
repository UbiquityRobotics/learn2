LiDAR Sensors
=============

.. important:: 

  This documentation covers **only the latest LiDAR models**.

  For details on legacy LiDARs, please refer to the `Legacy Documentation <https://learn.ubiquityrobotics.com/noetic_magnisilver_lidar>`_.


Our robots support two LiDAR options: 

- **Short Range LiDAR**
- **Long Range LiDAR**

These sensors enhance navigation and mapping capabilities, and fitting various operational needs. 

.. _lidar_short_range:

Short Range LiDAR
#################

The Short Range LiDAR is a compact and ideal for indoor environments and tight spaces. 
Its high accuracy and 360 degrees scanning make it perfect for precise mapping and obstacle avoidance in confined areas.

.. image:: /_static/troubleshooting/hardware/lidar_short.png
   :alt: Short Range LiDAR
   :width: 400px
   :align: center

.. list-table::
   :widths: 20 20
   :header-rows: 1

   * - Model
     - Short Range LiDAR
   * - Wavelength
     - 905 nm
   * - Scanning Angle
     - 360°
   * - Detection Method
     - Time-of-Flight (ToF)
   * - Detection Range
     - 0 m ~ 12 m (70% reflectivity)
   * - Detection Accuracy
     - ±3 cm (0~6 m); ±4.5 cm (≥6m) (70% reflectivity)
   * - PRF
     - 4.5 kHz
   * - Angular Resolution
     - 0.48°~0.96°
   * - Scanning Rate
     - 10 Hz
   * - Output Data Resolution
     - 15 mm
   * - Data Content
     - Azimuth, Distance, Intensity
   * - Operating Voltage
     - 5 VDC (4.75 V ~ 5.25 V)
   * - Operating Power
     - 1 W 
   * - Operating Temperature
     - -10°C ~ 40°C
   * - Storage Temperature
     - -30°C ~ 70°C
   * - Maximum Acceptable Ambient Light Intensity
     - 4 K Lux
   * - Motor
     - Built-in Brushless Motor
   * - Communication Interface
     - Standard Asynchronous Serial Port (Baud Rate: 230400 bps)
   * - IP Grade
     - IPX-4


.. _lidar_long_range:

Long Range LiDAR    
################

The Long Range LidAR is designed for long-range detection, suitable for outdoor applications and large-scale enviromnets. 
With a 120m range and robust build, it excels in extensive mapping and navigation tasks.

.. image:: /_static/troubleshooting/hardware/lidar_long.png
   :alt: Long Range LiDAR
   :width: 400px
   :align: center

.. list-table::
   :widths: 20 20 
   :header-rows: 1
   
   * - Model
     - Long Range LiDAR
   * - Detection Method
     - Time-of-Flight (ToF)
   * - Wavelength
     - 905 nm
   * - Laser Class
     - Class I (eye-safe)
   * - Channels
     - 1
   * - Detection Range
     - 120m detection range, 80m@10% reflectivity
   * - Range Accuracy
     - ±3 cm
   * - Range Precision
     - ±1 cm (1σ)
   * - Horizontal FOV
     - 360°
   * - Scanning Rate 
     - 20 Hz (Can be manullly adjusted to 5 Hz or 10 Hz)
   * - Horizontal Angular Resolution
     - 0.36° at 20 Hz (0.09°\: 5 Hz, 0.18°\: 10 Hz)
   * - Data Point Generating Rate
     - Single Echo 20,000 pts/sec, Dual Echo 40,000 pts/sec
   * - Communication Interface
     - Fast Ethernet, PPS
   * - Operating Voltage
     - 9V ~ 32 VDC
   * - Operating Power
     - 7 W (20Hz)
   * - Operating Temperature
     - -20°C ~ 60°C
   * - Storage Temperature
     - -40°C ~ 85°C
   * - Vibration Test
     - 5 Hz ~ 2000 Hz, 3G rms
   * - Shock Test
     - 500 m/sec², lasting for 11ms
   * - IP Grade
     - IP67


LiDAR Compatabillity by Robot Model
###################################

- **Magni Mini:** Equipped with the Short Range LiDAR.
- **Magni Medi:** Supports both Short Range LiDAR and Long Range LiDAR.

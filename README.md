Learning-Based Model Predictive Control for Multi-Room Energy Incident Management in Smart Hospitals Using Cloud Services
Course: 23AID305 – Control System

Team 9

Gowtham SD (CB.AI.U4AID23113)

Guhan K B (CB.AI.U4AID23114)

Vaishnavi Gupta (CB.AI.U4AID23149)

Vyshnav Kumar S (CB.AI.U4AID23151)

📌 Introduction

Hospitals require reliable energy and thermal management to ensure patient safety and comfort. Traditional systems lack adaptability, prioritization, and cloud-based monitoring.
Our project introduces a Learning-Based Model Predictive Control (LB-MPC) framework for managing HVAC systems across multiple hospital zones.

Real-time data → Cloud for monitoring & visualization

Intelligent, scalable, and adaptive energy management

Incident-aware prioritization of hospital zones

🚩 Problem Statement

Existing hospital EMS are hardware-dependent.

Lack priority-based allocation for critical zones (e.g., ICU, OT).

Conventional MPC is static / data-hungry → less effective under dynamic hospital conditions.

Missing cloud-based scalability & intelligence for adaptive control.

🎯 Objectives

Simulate real-time hospital energy demand across multi-priority zones.

Optimize energy dispatch with battery SoC and grid constraints.

Provide a remote cloud dashboard for monitoring & control.

Achieve hardware-free, cloud-driven deployment.

⚙️ Methodology

Thermal & Electrical Modeling

RC models for hospital rooms (temperature + HVAC load).

Equipment, lighting, and occupancy load profiles.

Power Grid & EMS Simulation

IEEE test systems with hospital loads.

Power flow, renewable integration, fault handling.

Data Acquisition Layer

Collect real-time sensor data (temperature, power usage).

Stream to EMS + Cloud.

Forecasting Module

Predict ambient temperature & power availability.

Enable proactive, disturbance-aware control.

Cloud Integration

Data storage, visualization, and LB-MPC coordination.

Learning-Based MPC (LB-MPC)

Optimize HVAC control actions with real-time + forecast data.

Adaptive improvement via reinforcement learning.

📊 Phase-1 Progress (IEEE 14-Bus System)

Loaded IEEE 14-Bus System using MATLAB/Simulink (Simscape Electrical) & MATPOWER.

Selected 4–6 buses for hospital zones.

Implemented custom zone models with HVAC switching & temperature profiles.

Designed priority-based control strategy:

Priority 1 (ICU, OT): Strictest band (22–24°C), HVAC kept ON longest.

Priority 2 (Emergency, Critical Care): Wider band (21–25°C), shed after P1.

Priority 3 (General Wards): Wider band (20–26°C), shed before P1 & P2.

Priority 4 (Admin Offices): Broadest band (18–28°C), shed first.

🛠 Tools & Technologies

MATLAB / Simulink / Simscape Electrical

MATPOWER

Python (TensorFlow)

ThingSpeak (Cloud IoT Platform)

📅 Timeline

Phase 1: IEEE 14-Bus + Hospital Zones (Completed)

Phase 2: Multi-zone LB-MPC implementation

Phase 3: Cloud dashboard integration & reinforcement learning adaptation

📚 References

H. Agharazi et al., IEEE Transactions on Control Systems Technology, 2024.

W. Cai et al., IEEE Access, 2023.

S. S. Tohidi et al., IEEE Control Systems Letters, 2024.

B. He et al., IEEE Transactions on Smart Grid, 2024.

H. Li et al., IEEE Transactions on Automation Science and Engineering, 2025.

B. K. Oleiwi & A. H. Sabry, IEEE Embedded Systems Letters, 2024.

G. Mantovani & L. Ferrarini, IEEE Transactions on Industrial Electronics, 2015.

A. Martinčević & M. Vašak, IEEE Transactions on Control Systems Technology, 2020.

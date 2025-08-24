# 🏥 Learning-Based Model Predictive Control for Multi-Room Energy Incident Management in Smart Hospitals Using Cloud Services  

### 📘 Course: 23AID304 – High Performance Computing
### 📘 Course: 23AID305 – Control System  

**👨‍💻 Team 9**  
- Gowtham SD (CB.AI.U4AID23113)  
- Guhan K B (CB.AI.U4AID23114)  
- Vaishnavi Gupta (CB.AI.U4AID23149)  
- Vyshnav Kumar S (CB.AI.U4AID23151)  

---

## 📌 Introduction  
Hospitals require **reliable energy and thermal management** to ensure patient safety and comfort.  
Traditional systems lack:  
- Adaptability  
- Priority-based control  
- Cloud-based monitoring  

This project introduces a **Learning-Based Model Predictive Control (LB-MPC)** framework to manage **HVAC systems** across multiple hospital zones.  

- Real-time data → sent to the **cloud** for monitoring & visualization  
- Supports **scalable, adaptive energy management**  
- Provides **incident-aware prioritization** of zones  

---

## 🚩 Problem Statement  
- Existing hospital EMS are **hardware-dependent**  
- No **priority-based allocation** for critical hospital zones (e.g., ICU, OT)  
- Conventional MPC is **static / data-hungry**, reducing accuracy under dynamic conditions  
- Lack of **cloud-based scalability & intelligence** for adaptive multi-zone control  

---

## 🎯 Objectives  
- Simulate **real-time energy demand** across hospital zones with different priorities  
- Optimize **energy dispatch** considering **battery SoC** and **grid constraints**  
- Provide an **interactive cloud dashboard** for monitoring & control  
- Deploy as a **cloud-native, hardware-free solution**  

---

## ⚙️ Methodology  

### 1. Thermal & Electrical Modeling  
- RC thermal models for rooms  
- Simulate temperature variations & HVAC load  
- Add electrical profiles (lights, equipment, occupancy)  

### 2. Power Grid & EMS Simulation  
- IEEE test systems with hospital loads  
- Integrate renewables & power faults  
- EMS block for monitoring consumption  

### 3. Data Acquisition Layer  
- Collect real-time **temperature & power usage**  
- Stream to **EMS & Cloud**  

### 4. Forecasting Module  
- Predict ambient temperature & power availability  
- Enable **disturbance-aware proactive control**  

### 5. Cloud Integration  
- Data storage, logging, and forecast distribution  
- Interface between EMS & LB-MPC  

### 6. Learning-Based MPC (LB-MPC)  
- Optimize HVAC control actions using **forecast + real-time data**  
- Maintain comfort while **minimizing energy**  
- **Reinforcement Learning** for adaptive policy updates  

---

## 📊 Phase-1 Progress (IEEE 14-Bus System)  

- Implemented **IEEE 14-Bus System** using MATLAB/Simulink (Simscape Electrical) & MATPOWER  
- Selected **4–6 buses** for hospital zones  
- Replaced default loads with **custom hospital zone models**  

### 🏥 Zone Priority Design  
- **Priority 1 – ICU, OT:**  
  - Strictest temp band **22–24°C**  
  - HVAC ON as long as possible  
- **Priority 2 – Emergency, Critical Care:**  
  - Wider band **21–25°C**  
  - Shed only after Priority 1  
- **Priority 3 – General Wards:**  
  - Wider band **20–26°C**  
  - Shed before Priority 1 & 2  
- **Priority 4 – Admin Offices:**  
  - Broadest band **18–28°C**  
  - Shed first during shortages  

---

## 🛠 Tools & Technologies  
- MATLAB / Simulink / Simscape Electrical  
- MATPOWER  
- Python (TensorFlow)  
- ThingSpeak (Cloud IoT Platform)  

---

## 📅 Timeline  
- **Phase 1:** IEEE 14-Bus + Hospital Zones ✅  
- **Phase 2:** Multi-zone LB-MPC implementation 🔄  
- **Phase 3:** Cloud dashboard + RL integration ⏳  

---

## 📚 References  
1. H. Agharazi et al., *IEEE Trans. on Control Systems Technology*, 2024  
2. W. Cai et al., *IEEE Access*, 2023  
3. S. S. Tohidi et al., *IEEE Control Systems Letters*, 2024  
4. B. He et al., *IEEE Trans. on Smart Grid*, 2024  
5. H. Li et al., *IEEE Trans. on Automation Science and Eng.*, 2025  
6. B. K. Oleiwi & A. H. Sabry, *IEEE Embedded Systems Letters*, 2024  
7. G. Mantovani & L. Ferrarini, *IEEE Trans. on Industrial Electronics*, 2015  
8. A. Martinčević & M. Vašak, *IEEE Trans. on Control Systems Technology*, 2020  

---

# 🎓 Thesis Repository: New Model of Unmanned Aerial Vehicle Enabled Communication System

Unmanned Aerial Vehicles (UAVs), also known as drones, have emerged as a powerful enabler in modern wireless communication systems. Their ability to provide flexible, rapid, and cost-effective deployment makes them particularly valuable in scenarios where traditional infrastructure is limited or unavailable — such as natural disasters, rural areas, temporary events, or emergencies.

In UAV-enabled communication networks, drones can serve as:

📶 Aerial base stations to extend coverage and capacity

📡 Relays or backhaul nodes to improve connectivity

🛰️ Flying access points for IoT or sensor networks

This research focuses on optimizing UAV positioning in communication networks through a 3D analysis of both users and UAVs, incorporating the Shadowed Rician fading model under LoS and NLoS conditions.

This repository contains simulations and replication materials developed during my research on UAV-enabled communication systems.
---

## 📦 1. Systematic Mapping Study (SMS) -- 3D Placement optimization in UAV-enabled Communications.

This systematic mapping study (SMS) provides a comprehensive overview of optimal 3D UAV placement in UAV-enabled wireless communication systems. While previous surveys have focused on specific subdomains—such as mobile networks or AI-based techniques—this work adopts a broader scope, emphasizing classical optimization methods including convex/non-convex optimization, linear/nonlinear programming, mixed-integer programming, and heuristic approaches like PSO and genetic algorithms. Also, it includes the replication materials for the SMS-based experiment conducted as part of the thesis. The complete dataset, documentation, and experimental methodology are hosted on Mendeley:

🔗 **Replication Package**: https://data.mendeley.com/datasets/wfbrvxm7v6/1)

---

## 📈 2. Optimization of Transmission Power in a 3D UAV-Enabled Communication System

This section addresses the 3D optimal placement of UAVs in communication systems, focusing on minimizing the total transmission power while ensuring a minimum data rate for all ground users.

Unlike most prior studies that assume users are located on a 2D plane, this work adopts a realistic 3D user distribution model—particularly relevant for mountainous regions like Quito, Ecuador. The model accounts for altitude variations and integrates probabilistic LoS/NLoS channel conditions based on Rician Shadowed fading.

Key features:

🎯 Objective: Minimize UAV transmission power while guaranteeing user data rate.

🧭 Environments considered:
  -  🏡 Suburban
  -  🏙️ Urban
  -  🌆 Dense Urban

🌐 Ground user spatial distributions:
  -  📊 Truncated Gaussian
  -  📉 Truncated Exponential
  -  🔲 Truncated Uniform  

⚙️ Optimization algorithms:
  - Genetic Algorithm (GA)
  - Particle Swarm Optimization-Evolution (PSO-E)

📂 Folder: /3D_UAV_Optimal_Placement/

---

## 📡 3. Joint 3D Placement and Power Optimization for UAV Communications under Rician Shadowed Channel

This section focuses on the 3D placement of UAVs under realistic wireless channel conditions to minimize total transmission power while guaranteeing a minimum data rate for all users.

🔍 Key aspects include:

🌆 Environmental scenarios:  urban.

📈 User distributions: truncated Gaussian.

📡 Channel model: Rician Shadowed with probabilistic LoS/NLoS links.

🤖 Optimization algorithms: PSO-E.

The simulation files are implemented in Wolfram Mathematica and are located in:

📂 /3D_UAV_Rician_Shadowed/
---

## 🧑‍💻 Author

**Jorge Carvajal-Rodríguez**  
Email: [jorge.carvajal@epn.edu.ec]  
GitHub: 

---

Thank you for your interest!

# Multiplayer Server Relational Database Schema 🗄️

This repository showcases a structured, production-ready relational database schema (SQL) engineered to handle persistence, relational mapping, and structural caching for core multi-user network environments.

## Database Overview
The schema is designed to model a heavy ecosystem consisting of real-time economy syncing, modular item inventories, and dynamic server permission rings.

### Key Structural Modules:
- **Core Entities & Users:** Preserves server states, licenses, specific groups, dead/alive conditions, and positional multi-vector parameters (`users`, `user_licenses`).
- **Financial Architecture:** Handles transaction logic, fine systems, institutional banking balances, and standard economy routing (`billing`, `fine_types`, `addon_account`).
- **Inventory & Asset Mapping:** Maps multi-item ownership models and item counts linked via dynamic constraints (`items`, `addon_inventory_items`, `owned_vehicles`).
- **Asynchronous Networks & Logs:** Manages virtual social platforms, in-game application communication grids, and data caches (`gksphone_settings`, `gksphone_twitter_tweets`, `gksphone_users_contacts`).

## Database Details
- **Engine:** InnoDB / MyISAM (Optimized for safe transactional rollbacks and execution speed)
- **Character Set:** `utf8mb4` (Full global character support)
- **Primary Concepts Demonstrated:** Relational constraints, auto-increment schema scaling, unique index combinations, and strict index keys (`ALTER TABLE` logic).

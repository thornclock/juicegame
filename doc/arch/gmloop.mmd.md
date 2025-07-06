```mermaid
---
title: Non-Autoload nodes for Game
---
classDiagram
    %% 10 mins = 1 in-game hr
    class GameTimer

    class ItemInventory

    %% Maintains CO2 and Humidity. Works with GameTimer to 
    class VitalManager

    GameTimer -- VitalManager

    class PlayerInstance

    PlayerInstance --> VitalManager
    PlayerInstance --> ItemInventory 
```
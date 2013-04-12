* New features
  * Czech language support ([#2136](https://github.com/pioneerspacesim/pioneer/issues/2136))
  * Planets now cast shadows (ie, eclipses) on other planets ([#1353](https://github.com/pioneerspacesim/pioneer/issues/1353))
  * Missiles now have smoke trails ([#2154](https://github.com/pioneerspacesim/pioneer/issues/2154))
  * Station waypoints are now defined in the mesh themselves and dealt with in C++, and their docking bays can be grouped together ([#2058](https://github.com/pioneerspacesim/pioneer/issues/2058), [#2175](https://github.com/pioneerspacesim/pioneer/issues/2175))
  * The System View (F3, F6) now shows the player's current orbit ([#2084](https://github.com/pioneerspacesim/pioneer/issues/2084), [#2168](https://github.com/pioneerspacesim/pioneer/issues/2168), [#2169](https://github.com/pioneerspacesim/pioneer/issues/2169), [#146](https://github.com/pioneerspacesim/pioneer/issues/146), [#985](https://github.com/pioneerspacesim/pioneer/issues/985))
  * The Sector View (F2) now has options to hide vertical lines and out-of-range system labels

* Minor changes and tweaks
  * Clean up the Taxi, DeliverPackage and Assassination mission views ([#2142](https://github.com/pioneerspacesim/pioneer/issues/2142), [#2151](https://github.com/pioneerspacesim/pioneer/issues/2151))
  * Tweak Polish translation ([#2167](https://github.com/pioneerspacesim/pioneer/issues/2167))
  * Gas giants now have a thin layer of atmosphere ([#1788](https://github.com/pioneerspacesim/pioneer/issues/1788), [#1395](https://github.com/pioneerspacesim/pioneer/issues/1395))

* Fixes
  * Fix hoop station unreliable docking detection ([#2153](https://github.com/pioneerspacesim/pioneer/issues/2153), [#2125](https://github.com/pioneerspacesim/pioneer/issues/2125))
  * Fix ground and "big_crappy" station docking detection ([#2197](https://github.com/pioneerspacesim/pioneer/issues/2197))
  * Fix redscreen from TradeShips module when entering a system with only surface ports ([#2172](https://github.com/pioneerspacesim/pioneer/issues/2172), [#2171](https://github.com/pioneerspacesim/pioneer/issues/2171))
  * Fix object viewer crash ([#2187](https://github.com/pioneerspacesim/pioneer/issues/2187))
  * Fix Lua console to allow continuation of incomplete commands ([#2198](https://github.com/pioneerspacesim/pioneer/issues/2198))

* Internal changes
  * Converted some remaining GL code to use the renderer interface ([#2184](https://github.com/pioneerspacesim/pioneer/issues/2184))

* New features
  * Crew! Hire people to do stuff for you (experimental) ([#1973](https://github.com/pioneerspacesim/pioneer/issues/1973), [#2025](https://github.com/pioneerspacesim/pioneer/issues/2025), [#2030](https://github.com/pioneerspacesim/pioneer/issues/2030), [#2039](https://github.com/pioneerspacesim/pioneer/issues/2039))
  * New ship "Deep Space Miner" ([#2023](https://github.com/pioneerspacesim/pioneer/issues/2023))

* Minor changes and tweaks
  * Cargo scooping now only requires a collision against the ship rather than a specific part of it (again) ([#1922](https://github.com/pioneerspacesim/pioneer/issues/1922))
  * Improve point sprite (LMR billboard) rendering performance ([#1927](https://github.com/pioneerspacesim/pioneer/issues/1927), [#1929](https://github.com/pioneerspacesim/pioneer/issues/1929), [#1928](https://github.com/pioneerspacesim/pioneer/issues/1928))
  * Improve city rendering performance ([#1927](https://github.com/pioneerspacesim/pioneer/issues/1927))
  * Removed per-light ambient color and building fade ([#1930](https://github.com/pioneerspacesim/pioneer/issues/1930))
  * Ship thrust and fuel tank size have been rebalanced ([#1689](https://github.com/pioneerspacesim/pioneer/issues/1689))
  * Restore "Pioneering Pilots' Guild" text ([#1987](https://github.com/pioneerspacesim/pioneer/issues/1987), [#1989](https://github.com/pioneerspacesim/pioneer/issues/1989))
  * New Hope is now located on land ([#1977](https://github.com/pioneerspacesim/pioneer/issues/1977))
  * Debug information overlay now includes latitude and longitude ([#1994](https://github.com/pioneerspacesim/pioneer/issues/1994))
  * Missile spawn and control moved to Lua ([#1663](https://github.com/pioneerspacesim/pioneer/issues/1663))
  * Add more names to the name generator ([#2021](https://github.com/pioneerspacesim/pioneer/issues/2021))
  * Labels on SGModels can now be set ([#1979](https://github.com/pioneerspacesim/pioneer/issues/1979))

* Fixes
  * Collisions with stars now work again ([#1942](https://github.com/pioneerspacesim/pioneer/issues/1942))
  * Dates before 3200-01-01 no longer display negative ([#1955](https://github.com/pioneerspacesim/pioneer/issues/1955), [#1954](https://github.com/pioneerspacesim/pioneer/issues/1954))
  * Text on SGModel ships now uses correct character offsets ([#1980](https://github.com/pioneerspacesim/pioneer/issues/1980))
  * An unset decal no longer displays a black square on Intel graphics ([#1976](https://github.com/pioneerspacesim/pioneer/issues/1976))
  * Fixed various crashes caused by console completion ([#1998](https://github.com/pioneerspacesim/pioneer/issues/1998))
  * SGModel animation timing fixes ([#1978](https://github.com/pioneerspacesim/pioneer/issues/1978), [#1970](https://github.com/pioneerspacesim/pioneer/issues/1970))
  * Greatly reduced chance of police ships spawning on top of each other ([#1993](https://github.com/pioneerspacesim/pioneer/issues/1993))
  * Fixed station names being repeated within a single system ([#1958](https://github.com/pioneerspacesim/pioneer/issues/1958), [#1911](https://github.com/pioneerspacesim/pioneer/issues/1911))
  * Handle missing material definitions by providing a basic white default material if none are specified ([#1817](https://github.com/pioneerspacesim/pioneer/issues/1817), [#1916](https://github.com/pioneerspacesim/pioneer/issues/1916))
  * Detect conflicts between animations ([#1938](https://github.com/pioneerspacesim/pioneer/issues/1938))
  * Animations now work correctly across detail level switches ([#1978](https://github.com/pioneerspacesim/pioneer/issues/1978))

* Model changes
  * Converted Lanner ship to SGModel ([#1957](https://github.com/pioneerspacesim/pioneer/issues/1957), [#1969](https://github.com/pioneerspacesim/pioneer/issues/1969), [#2002](https://github.com/pioneerspacesim/pioneer/issues/2002))
  * Converted Wave ship to SGModel ([#2022](https://github.com/pioneerspacesim/pioneer/issues/2022))
  * Converted "big crappy" spacestation to SGModel ([#1964](https://github.com/pioneerspacesim/pioneer/issues/1964), [#2017](https://github.com/pioneerspacesim/pioneer/issues/2017))
  * Converted "hoop" spacestation to SGModel ([#1932](https://github.com/pioneerspacesim/pioneer/issues/1932))
  * Converted standard building set to SGModel ([#1923](https://github.com/pioneerspacesim/pioneer/issues/1923))
  * Removed "mushroom" ground stations
  * Removed long-unused building models ([#1923](https://github.com/pioneerspacesim/pioneer/issues/1923))
  * Modelviewer: Reloading model also reloads textures ([#1968](https://github.com/pioneerspacesim/pioneer/issues/1968), [#1939](https://github.com/pioneerspacesim/pioneer/issues/1939))
  * Modelviewer: View controls are improved ([#1982](https://github.com/pioneerspacesim/pioneer/issues/1982))
  * Modelviewer: Larger models are displayed without z clipping ([#1982](https://github.com/pioneerspacesim/pioneer/issues/1982), [#1933](https://github.com/pioneerspacesim/pioneer/issues/1933))
  * Modelviewer: Improve zoom behaviour ([#2020](https://github.com/pioneerspacesim/pioneer/issues/2020))
  * New material parameters: unlit, two_sided and alpha_test ([#1995](https://github.com/pioneerspacesim/pioneer/issues/1995), [#1935](https://github.com/pioneerspacesim/pioneer/issues/1935))

* Script changes
  * Remove deprecated Ship methods.SetPrimaryColour and SetSecondaryColour and shipType attribute
  * Ship thruster efficiency can be specified with effective_exhaust_velocity value, instead of thruster_fuel_use (either can be used) ([#1689](https://github.com/pioneerspacesim/pioneer/issues/1689))
  * Add max_crew & min_crew params to ship def ([#1973](https://github.com/pioneerspacesim/pioneer/issues/1973))
  * Missile control methods Missile.Arm, Missile.Disarm, Ship.SpawnMissile and Ship.AIKamikaze ([#1663](https://github.com/pioneerspacesim/pioneer/issues/1663))
  * Separate station defs from LMR station models ([#1913](https://github.com/pioneerspacesim/pioneer/issues/1913), [#1931](https://github.com/pioneerspacesim/pioneer/issues/1931), [#1934](https://github.com/pioneerspacesim/pioneer/issues/1934))

* Internal changes
  * Cameras are no longer attached to a body, and World View camera controllers are no longer derived from Camera ([#1889](https://github.com/pioneerspacesim/pioneer/issues/1889))
  * Remove kill count from core ([#1944](https://github.com/pioneerspacesim/pioneer/issues/1944))
  * Intro & tombstone can now use SGModels ([#1956](https://github.com/pioneerspacesim/pioneer/issues/1956), [#2006](https://github.com/pioneerspacesim/pioneer/issues/2006))
  * SGModels now have priority over LMR models of the same name ([#1956](https://github.com/pioneerspacesim/pioneer/issues/1956))
  * Console completion now handled through the LuaObject dispatcher ([#1945](https://github.com/pioneerspacesim/pioneer/issues/1945), [#1672](https://github.com/pioneerspacesim/pioneer/issues/1672), [#1972](https://github.com/pioneerspacesim/pioneer/issues/1972), [#1974](https://github.com/pioneerspacesim/pioneer/issues/1974))
  * Queries for near-by objects now use a very basic acceleration structure ([#1910](https://github.com/pioneerspacesim/pioneer/issues/1910))
  * String <-> Integer enum mapping tables have been separated from Lua ([#1996](https://github.com/pioneerspacesim/pioneer/issues/1996))
  * Improve MultiLineText draw performance ([#1999](https://github.com/pioneerspacesim/pioneer/issues/1999))
  * SGModel nodes all carry a pointer to the renderer ([#1986](https://github.com/pioneerspacesim/pioneer/issues/1986))
  * SGModels can now be instanced, with separate appearance and animation state for each ([#2007](https://github.com/pioneerspacesim/pioneer/issues/2007), [#1975](https://github.com/pioneerspacesim/pioneer/issues/1975))
  * Bad terrain generator output will now emit lots of debug info before crashing ([#2005](https://github.com/pioneerspacesim/pioneer/issues/2005))
  * Fixed some memory leaks ([#2011](https://github.com/pioneerspacesim/pioneer/issues/2011))


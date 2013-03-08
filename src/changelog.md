* New features
  * Ship parade on the menu screen ([#2112](https://github.com/pioneerspacesim/pioneer/issues/2112))
  * New ship "Kanara Interceptor" ([#2037](https://github.com/pioneerspacesim/pioneer/issues/2037))
  * New ship "Lunar Shuttle" ([#2082](https://github.com/pioneerspacesim/pioneer/issues/2082))
  * New ship "Deneb Transport" ([#2119](https://github.com/pioneerspacesim/pioneer/issues/2119))
  * New fast random number generator ([#1893](https://github.com/pioneerspacesim/pioneer/issues/1893), [#2078](https://github.com/pioneerspacesim/pioneer/issues/2078), [#2079](https://github.com/pioneerspacesim/pioneer/issues/2079))
  * Upgraded hoop station ([#2046](https://github.com/pioneerspacesim/pioneer/issues/2046), [#2131](https://github.com/pioneerspacesim/pioneer/issues/2131), [#2114](https://github.com/pioneerspacesim/pioneer/issues/2114))
  * Removed Lua model system (LMR) ([#2029](https://github.com/pioneerspacesim/pioneer/issues/2029), [#2071](https://github.com/pioneerspacesim/pioneer/issues/2071))
  * Removed LMR-based ships ([#2061](https://github.com/pioneerspacesim/pioneer/issues/2061))
  * Removed Elite/Frontier content ([#2093](https://github.com/pioneerspacesim/pioneer/issues/2093))

* Minor changes and tweaks
  * Balanced DSMiner fuel use ([#2062](https://github.com/pioneerspacesim/pioneer/issues/2062))
  * Added laser mount to DSMiner ([#2055](https://github.com/pioneerspacesim/pioneer/issues/2055))
  * Model animation state saved and restored to savefile ([#2044](https://github.com/pioneerspacesim/pioneer/issues/2044))
  * New missile AI ([#2094](https://github.com/pioneerspacesim/pioneer/issues/2094))
  * Shortcut key to launch missiles ('m') ([#2094](https://github.com/pioneerspacesim/pioneer/issues/2094))
  * Show realtime orbit positions in system view ([#2104](https://github.com/pioneerspacesim/pioneer/issues/2104))

* Fixes
  * Work around missing model UV coordinates ([#2034](https://github.com/pioneerspacesim/pioneer/issues/2034), [#1952](https://github.com/pioneerspacesim/pioneer/issues/1952))
  * Fully initialise Body object in its constructor ([#2048](https://github.com/pioneerspacesim/pioneer/issues/2048))
  * Fix crash when refueling ([#2050](https://github.com/pioneerspacesim/pioneer/issues/2050))
  * Reduce terrain "grid" effect ([#2053](https://github.com/pioneerspacesim/pioneer/issues/2053), [#1631](https://github.com/pioneerspacesim/pioneer/issues/1631))
  * Fix crash in several mission screens when accessed during hyperspace ([#2064](https://github.com/pioneerspacesim/pioneer/issues/2064), [#2056](https://github.com/pioneerspacesim/pioneer/issues/2056))
  * Fix crash when missiles explode before activation ([#2067](https://github.com/pioneerspacesim/pioneer/issues/2067), [#2066](https://github.com/pioneerspacesim/pioneer/issues/2066))
  * Fix duplicated model animation groups ([#2063](https://github.com/pioneerspacesim/pioneer/issues/2063), [#2024](https://github.com/pioneerspacesim/pioneer/issues/2024))

* Model changes
  * Converted Natrix ship to SGModel ([#2033](https://github.com/pioneerspacesim/pioneer/issues/2033), [#2095](https://github.com/pioneerspacesim/pioneer/issues/2095))
  * Upscaled DSMiner model ([#2096](https://github.com/pioneerspacesim/pioneer/issues/2096))
  * New missile model ([#2036](https://github.com/pioneerspacesim/pioneer/issues/2036))
  * New cargo model ([#2101](https://github.com/pioneerspacesim/pioneer/issues/2101))
  * Downscaled building models ([#2052](https://github.com/pioneerspacesim/pioneer/issues/2052))
  * Add test_gun model ([#2060](https://github.com/pioneerspacesim/pioneer/issues/2060))
  * Converted tombstone to SGModel ([#2083](https://github.com/pioneerspacesim/pioneer/issues/2083))
  * Basic support for station door animations ([#2046](https://github.com/pioneerspacesim/pioneer/issues/2046))
  * Support for navigation lights ([#2080](https://github.com/pioneerspacesim/pioneer/issues/2080))
  * Support for per-instance skinning ([#2088](https://github.com/pioneerspacesim/pioneer/issues/2088))
  * Modelviewer: Scale/landingpad test model (press 'p') ([#2034](https://github.com/pioneerspacesim/pioneer/issues/2034), [#1981](https://github.com/pioneerspacesim/pioneer/issues/1981))
  * Modelviewer: More/better log output ([#2034](https://github.com/pioneerspacesim/pioneer/issues/2034), [#1876](https://github.com/pioneerspacesim/pioneer/issues/1876))
  * Modelviewer: Enable mods ([#2032](https://github.com/pioneerspacesim/pioneer/issues/2032))

* Script changes
  * UI: MultiLineText objects now have SetText and AppendText methods ([#2045](https://github.com/pioneerspacesim/pioneer/issues/2045))
  * ShipTypes is deprecated, and EquipTypes has been removed; use the new ShipDef and EquipDef tables ([#2026](https://github.com/pioneerspacesim/pioneer/issues/2026))
  * Player.SetHyperspaceTarget and GetHyperspaceTarget methods ([#2028](https://github.com/pioneerspacesim/pioneer/issues/2028), [#2027](https://github.com/pioneerspacesim/pioneer/issues/2027))
  * Model: Ship.GetSkin & SetSkin and skin manipulation methods ([#2080](https://github.com/pioneerspacesim/pioneer/issues/2080))

* Internal changes
  * Removed Text::VectorFont ([#2041](https://github.com/pioneerspacesim/pioneer/issues/2041))
  * Removed Renderer::DrawPoints2D ([#2041](https://github.com/pioneerspacesim/pioneer/issues/2041))
  * LuaObject wrapper cleanup ([#2026](https://github.com/pioneerspacesim/pioneer/issues/2026), [#2049](https://github.com/pioneerspacesim/pioneer/issues/2049), [#2073](https://github.com/pioneerspacesim/pioneer/issues/2073), [#2075](https://github.com/pioneerspacesim/pioneer/issues/2075))
  * Fix SGModel NodeVisitor not applying correctly to all node types ([#2076](https://github.com/pioneerspacesim/pioneer/issues/2076), [#2074](https://github.com/pioneerspacesim/pioneer/issues/2074))
  * Remove ShipFlavour structure ([#2069](https://github.com/pioneerspacesim/pioneer/issues/2069), [#2135](https://github.com/pioneerspacesim/pioneer/issues/2135), [#2113](https://github.com/pioneerspacesim/pioneer/issues/2113))


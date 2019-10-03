# BrokenLoDLoading
Minimal reproduction of an issue in WoW (Classic and BFA) where `ADDON_LOADED` will not fire when an AddOn is set to load with another Load-on-Demand AddOn, and that LoD AddOn is loaded with `LoadAddOn`.

---

When just "LoDExample" is enabled, and the Talent UI is loaded, the following is printed to the chat window:

```
running LoDExample
LoDExample loaded
```

However, when both "LoDExample" and "!LoadsLoD" are enabled, the following is printed to the chat window:

```
running !LoadsLoD
!LoadsLoD loaded, loading Talent UI
running LoDExample
after loading Talent UI
```

In this second situation, "LoDExample loaded" is never printed, as `ADDON_LOADED` with the first item in `...` being the AddOn name is never fired.  However, the saved variables are eventually loaded.

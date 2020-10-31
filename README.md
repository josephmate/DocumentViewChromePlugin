# DocumentViewChromePlugin
Hides a webpage's side bars, top bars, and whatever else bars so you have more screen space to see your document.

# Example
![Confluence Before Hiding](/screenshots/Confluence_1000.0.0-d45d49b52de3_before.png "Confluence Before Hiding")
![Confluence After Hiding](/screenshots/Confluence_1000.0.0-d45d49b52de3_after.png "Confluence After Hiding")


# Supported Websites
Confluence 1000.0.0-d45d49b52de3

# How it works
Add `hidden=true` to the divs containing the navigation bars. You can manually reproduce this by inspecting the navigation bar in developer tools and finding the right divs and adding `hidden=true` to them.

Top Website Navigation bar:
```
<div hidden=true data-testid="grid-topNav" id="AkTopNav" data-ds--page-layout--slot="top-navigation" class="css-1agqodg">
```

Top Document Navigation bar:
```
<div hidden=true class="sc-cpHetk jWNNmg" width="620" data-test-id="header-animated-box"><div class=" sticky-header sc-bNQFlB bvUgZ" id="content-header-container">
```

Side Website Navigation bar:
```
<div hidden=true class="css-wfhfml e4yppja0"><div data-testid="grid-left-sidebar" id="AkSideNavigation" data-ds--page-layout--slot="left-sidebar" class="css-1k3cjop"><style>:root{--leftSidebarWidth:20px;}</style><div class="css-cdxr6t"><div class="css-1vtjebk"><div class="css-lcmf0q"><div data-testid="app-navigation-space-container" class="css-1v8gcgw epgx00x0">
```

# Want a site supported? Not working?

Submit a pull request: https://github.com/josephmate/DocumentViewChromePlugin/pulls

File a new issue asking for support: https://github.com/josephmate/DocumentViewChromePlugin/issues
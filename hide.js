


// Top Website Navigation bar:
// <div hidden=true data-testid="grid-topNav" id="AkTopNav" data-ds--page-layout--slot="top-navigation" class="css-1agqodg">
var websiteTopNavBar = document.getElementById('AkTopNav');
websiteTopNavBar.hidden = true;

// Side Website Navigation bar:
// <div hidden=true class="css-wfhfml e4yppja0">
//     <div data-testid="grid-left-sidebar" id="AkSideNavigation" data-ds--page-layout--slot="left-sidebar" class="css-1k3cjop">
//         <style>:root{--leftSidebarWidth:20px;}</style><div class="css-cdxr6t"><div class="css-1vtjebk"><div class="css-lcmf0q">
//         <div data-testid="app-navigation-space-container" class="css-1v8gcgw epgx00x0">
var websiteSideNavBar = document.getElementById('AkSideNavigation')
    .parentNode;
websiteSideNavBar.hidden = true;

// Top Document Navigation bar:
// <div hidden=true class="sc-cpHetk jWNNmg" width="620" data-test-id="header-animated-box">
//     <div class=" sticky-header sc-bNQFlB bvUgZ" id="content-header-container">
var documentTopNavBar = document.getElementById('content-header-container')
    .parentNode;
documentTopNavBar.hidden = true;


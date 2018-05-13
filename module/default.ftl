<#macro default title="" keywords="" desc="" canonical="">
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>${title}</title>
    <meta name="description" content="${desc}">
    <meta name="author" content="${user.userDisplayName?if_exists}">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="${title}">
    <meta name="twitter:description" content="${desc}">
    <meta property="og:type" content="article">
    <meta property="og:title" content="${title}">
    <meta property="og:description" content="${desc}">
    <link rel="icon" type="image/png" href="${options.vno_general_favicon?if_exists}" />
    <link href="${options.vno_general_favicon?if_exists}" rel="shortcut icon" type="image/png">
    <link rel="stylesheet" href="/vno/source/css/main.css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="canonical" href="${canonical}">
    <link rel="alternate" type="application/rss+xml" title="${options.blog_title?if_exists}" href="/feed.xml">
    <meta name="google-site-verification" content="" />
</head>
<body>
    <span class="mobile btn-mobile-menu">
        <i class="fa fa-list btn-mobile-menu__icon"></i>
        <i class="fa fa-angle-up btn-mobile-close__icon hidden"></i>
    </span>
    <#include "../_includes/side-panel.ftl">
    <div class="content-wrapper">
        <div class="content-wrapper__inner">
            <#nested >
            <#include "../_includes/footer.ftl"/>
        </div>
    </div>
    <#include "../_includes/external.ftl">
  </body>
</html>
</#macro>
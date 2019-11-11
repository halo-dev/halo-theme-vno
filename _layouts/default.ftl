<#macro default title keywords description canonical>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <title>${title!}</title>
    <meta name="description" content="${description!}">
    <meta name="author" content="Wei Wang">

    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="${title!}">
    <meta name="twitter:description" content="${description!}">

    <meta property="og:type" content="article">
    <meta property="og:title" content="${title!}">
    <meta property="og:description" content="${description!}">

    <@global.head/>

    <link rel="stylesheet" href="${static!}/css/main.css">
    <link href="//cdn.jsdelivr.net/npm/font-awesome@4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <link rel="canonical" href="${canonical!}">
    <link rel="alternate" type="application/rss+xml" title="${options.blog_title!}" href="${context!}/feed.xml">

</head>

<body>

    <span class="mobile btn-mobile-menu">
        <i class="fa fa-list btn-mobile-menu__icon"></i>
        <i class="fa fa-angle-up btn-mobile-close__icon hidden"></i>
    </span>
    
    <#include "../_includes/side-panel.ftl">

    <div class="content-wrapper">
        <div class="content-wrapper__inner">
            <#nested />
            <#include "../_includes/footer.ftl">
        </div>
    </div>
    
    <#include "../_includes/external.ftl">
    
  </body>

</html>
</#macro>
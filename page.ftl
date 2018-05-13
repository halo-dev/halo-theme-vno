<#include "module/page.ftl">
<@page title="${post.postTitle} - ${options.blog_title}" keywords="${options.seo_keywords?if_exists}" desc="${options.seo_desc?if_exists}" canonical="${options.blog_url}/p/${post.postUrl}">
${post.postContent}
</@page>
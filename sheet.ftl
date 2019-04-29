<#include "module/page.ftl">
<@page title="${post.title} - ${options.blog_title}" keywords="${options.seo_keywords!}" desc="${options.seo_description!}" canonical="${options.blog_url}/p/${post.url}">
${post.formatContent}
</@page>
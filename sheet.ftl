<#include "module/page.ftl">
<@page title="${sheet.title} - ${options.blog_title!}" keywords="${options.seo_keywords!}" desc="${options.seo_description!}" canonical="${context!}/s/${sheet.url}">
${sheet.formatContent}
</@page>
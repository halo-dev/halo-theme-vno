<#include "module/default.ftl">
<@default title="${tag.name} - ${options.blog_title!'vno'}" keywords="${options.seo_keywords!}" desc="${options.seo_description!}" canonical="${context!}/tags/${tag.slugName}">
    <div class="main-post-list hidden">
        <ol class="post-list">
            <#list posts.content as post>
            <li>
                <h2 class="post-list__post-title post-title"><a href="${context!}/archives/${post.url}" title="访问 ${post.title}">${post.title}</a></h2>
                <p class="excerpt">${post.summary}...</p>
                <div class="post-list__meta">
                    <time datetime="${post.createTime}" class="post-list__meta--date date">${post.createTime?string("yyyy-MM-dd")}</time> &#8226;
                    <span class="post-list__meta--tags tags">
                        <#if post.tags?? && post.tags?size gt 0>
                            <#list post.tags as tag>
                                <a href="${context!}/tags/${tag.slugName}#blog">${tag.name}</a>&nbsp;
                            </#list>
                        </#if>
                    </span>
                    <a class="btn-border-small" href="${context!}/archives/${post.url}">继续阅读</a></div>
                <hr class="post-list__divider" />
            </li>
            </#list>
        </ol>
        <#include "_includes/pagination.ftl">
        <@nav url = "${context!}/tags/${tag.slugName}/"></@nav>
    </div>
</@default>
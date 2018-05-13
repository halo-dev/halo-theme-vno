<#include "module/default.ftl">
<@default title="${options.blog_title?default('vno')}" keywords="${options.seo_keywords?if_exists}" desc="${options.seo_desc?if_exists}" canonical="${options.blog_url?if_exists}">
    <div class="main-post-list hidden">
        <ol class="post-list">
            <#list posts.content as post>
                <li>
                    <h2 class="post-list__post-title post-title"><a href="/archives/${post.postUrl}"
                                                                    title="访问 ${post.postTitle}">${post.postTitle}</a>
                    </h2>
                    <p class="excerpt">${post.postSummary}...</p>
                    <div class="post-list__meta">
                        <time datetime="${post.postDate}"
                              class="post-list__meta--date date">${post.postDate?string("yyyy-MM-dd")}</time> &#8226;
                        <span class="post-list__meta--tags tags">
                        <#if post.tags?? && post.tags?size gt 0>
                            <#list post.tags as tag>
                                <a href="/tags/${tag.tagUrl}#blog">${tag.tagName}</a>&nbsp;
                            </#list>
                        </#if>
                        </span>
                        <a class="btn-border-small" href="/archives/${post.postUrl}">继续阅读</a></div>
                    <hr class="post-list__divider"/>
                </li>
            </#list>
        </ol>
        <#include "_includes/pagination.ftl">
        <@nav url = "/"></@nav>
    </div>
</@default>
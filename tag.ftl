<#include "_layouts/default.ftl">
<@default title="标签：${tag.name} - ${blog_title!}" canonical="${tag.fullPath!}">
    <div class="main-post-list hidden">
        <ol class="post-list">
            <#list posts.content as post>
                <li>
                    <h2 class="post-list__post-title post-title"><a href="${post.fullPath!}" title="访问 ${post.title!}">${post.title!}</a></h2>
                    <p class="excerpt">${post.summary}...</p>
                    <div class="post-list__meta">
                        <time datetime="${post.createTime}" class="post-list__meta--date date">${post.createTime?string("yyyy-MM-dd")}</time>
                        <span class="post-list__meta--tags tags">
                        <#if post.tags?? && post.tags?size gt 0>
                            <#list post.tags as tag>
                                &#8226;
                                <a href="${tag.fullPath!}#blog">${tag.name}</a>&nbsp;
                            </#list>
                        </#if>
                    </span>
                        <a class="btn-border-small" href="${post.fullPath!}">继续阅读</a></div>
                    <hr class="post-list__divider" />
                </li>
            </#list>
        </ol>
        <hr class="post-list__divider " />
        <nav class="pagination" role="navigation">
            <#if posts.totalPages gt 1>
                <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${tag.slug!}">
                    <#if pagination.hasPrev>
                        <a class="newer-posts pagination__newer btn btn-small btn-tertiary" href="${pagination.prevPageFullPath!}#blog">&larr; 最近</a>
                    </#if>
                    <span class="pagination__page-number">${posts.number+1} / ${posts.totalPages}</span>
                    <#if pagination.hasNext>
                        <a class="older-posts pagination__older btn btn-small btn-tertiary" href="${pagination.nextPageFullPath!}#blog">更早 &rarr;</a>
                    </#if>
                </@paginationTag>
            </#if>
        </nav>
    </div>
</@default>

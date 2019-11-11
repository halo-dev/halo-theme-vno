<#include "_layouts/default.ftl">
<#include "_includes/comments.ftl">
<@default title="${post.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${post.summary!}" canonical="${context!}/archives/${post.url}">
    <article class="post-container post-container--single" itemscope itemtype="http://schema.org/BlogPosting">
        <header class="post-header">
            <div class="post-meta">
                <time datetime="${post.createTime}" itemprop="datePublished" class="post-meta__date date">${post.createTime?string("yyyy-MM-dd")}</time>
                <span class="post-meta__tags tags">
                     <#if tags?? && tags?size gt 0>
                         <#list tags as tag>
                              &#8226;
                             <a href="${context!}/tags/${tag.slugName}#blog">${tag.name}</a>&nbsp;
                         </#list>
                     </#if>
                </span>
            </div>
            <h1 class="post-title">${post.title}</h1>
        </header>

        <section class="post">
            ${post.formatContent}
        </section>
    </article>

    <#include "_includes/read-more.ftl">
    <@comment post=post type="post" />
</@default>
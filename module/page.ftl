<#macro page title="" keywords="" desc="" canonical="">
    <#include "../module/default.ftl">
        <@default title="${title}" keywords="${keywords}" desc="${desc}" canonical="${canonical}">
        <article class="post-container post-container--single" itemscope itemtype="http://schema.org/BlogPosting">
            <header class="post-header">
                <div class="post-meta">
                    <time datetime="${post.postDate}" itemprop="datePublished" class="post-meta__date date">
                        ${post.postDate?string("yyyy-MM-dd")}
                    </time>
                </div>
                <h1 class="post-title">${post.postTitle}</h1>
            </header>
            <section class="post">
            <#nested/>
            </section>
        </article>
        <#include "../_includes/comments.ftl">
    </@default>
</#macro>
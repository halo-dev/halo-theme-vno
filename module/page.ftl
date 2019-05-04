<#macro page title="" keywords="" desc="" canonical="">
    <#include "../module/default.ftl">
        <@default title="${title}" keywords="${keywords}" desc="${desc}" canonical="${canonical}">
        <article class="post-container post-container--single" itemscope itemtype="http://schema.org/BlogPosting">
            <header class="post-header">
                <div class="post-meta">
                    <time datetime="${post.createTime}" itemprop="datePublished" class="post-meta__date date">
                        ${post.createTime?string("yyyy-MM-dd")}
                    </time>
                </div>
                <h1 class="post-title">${post.title}</h1>
            </header>
            <section class="post">
            <#nested/>
            </section>
        </article>
        <#include "../_includes/comments.ftl">
            <@comment post=sheet type="sheet" />
    </@default>
</#macro>
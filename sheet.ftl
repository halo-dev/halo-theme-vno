<#include "_layouts/default.ftl">
<#include "_includes/comments.ftl">
<@default title="${sheet.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/s/${sheet.url}">
    <article class="post-container post-container--single" itemscope itemtype="http://schema.org/BlogPosting">
        <header class="post-header">
            <div class="post-meta">
                <time datetime="${sheet.createTime}" itemprop="datePublished" class="post-meta__date date">
                    ${sheet.createTime?string("yyyy-MM-dd")}
                </time>
            </div>
            <h1 class="post-title">${sheet.title!}</h1>
        </header>

        <section class="post">
            ${sheet.formatContent!}
        </section>
    </article>
    <@comment post=sheet type="sheet" />
</@default>
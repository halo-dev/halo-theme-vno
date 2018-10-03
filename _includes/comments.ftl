<section class="post-comments">
    <#if post.allowComment?default(1)==1>
        <#include "/common/comment/_native_comment.ftl">
    </#if>
</section>

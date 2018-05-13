<nav class="cover-navigation navigation--social">
    <ul class="navigation">

        <#if options.vno_sns_weibo??>
        <!-- Weibo -->
        <li class="navigation__item">
            <a href="http://weibo.com/${options.vno_sns_weibo}" title="@${options.vno_sns_weibo} 的微博" target="_blank">
                <i class='social fa fa-weibo'></i>
                <span class="label">Weibo</span>
            </a>
        </li>
        </#if>

        <#if options.vno_sns_github??>
        <!-- Github -->
        <li class="navigation__item">
            <a href="https://github.com/${options.vno_sns_github}" title="@${options.vno_sns_github} 的 Github"
               target="_blank">
                <i class='social fa fa-github'></i>
                <span class="label">Github</span>
            </a>
        </li>
        </#if>

        <#if options.vno_sns_twitter??>
        <!-- Twitter -->
        <li class="navigation__item">
            <a href="http://twitter.com/${options.vno_sns_twitter}" title="@${options.vno_sns_twitter}" target="_blank">
                <i class='social fa fa-twitter'></i>
                <span class="label">Twitter</span>
            </a>
        </li>
        </#if>

        <#if options.vno_sns_google_plus??>
        <!-- Google Plus -->
        <li class="navigation__item">
            <a href="https://plus.google.com/${options.vno_sns_google_plus}" rel="author" title="Google+" target="_blank">
                <i class='social fa fa-google-plus-square'></i>
                <span class="label">Google Plus</span>
            </a>
        </li>
        </#if>

        <#if options.vno_sns_rss?default("true") == "true">
        <!-- RSS -->
        <li class="navigation__item">
            <a href="/feed.xml" rel="author" title="RSS" target="_blank">
                <i class='social fa fa-rss'></i>
                <span class="label">RSS</span>
            </a>
        </li>
        </#if>

        <#if options.vno_sns_email??>
        <!-- Email -->
        <li class="navigation__item">
            <a href="mailto:${options.vno_sns_email}" title="Contact me">
                <i class='social fa fa-envelope'></i>
                <span class="label">Email</span>
            </a>
        </li>
        </#if>
    </ul>
</nav>

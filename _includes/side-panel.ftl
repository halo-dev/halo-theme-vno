<header class="panel-cover <#if is_post?? || is_sheet??>panel-cover--collapsed</#if>" style="background-image: url('${settings.cover_image!"${theme_base!}/assets/images/background-cover.jpg"}')">
  <div class="panel-main">

    <div class="panel-main__inner panel-inverted">
    <div class="panel-main__content">

        <a href="${blog_url!}/#blog" title="前往 ${blog_title!} 的主页" class="blog-button"><img src="${user.avatar!}" width="80" alt="${blog_title!} logo" class="panel-cover__logo logo" /></a>
        <h1 class="panel-cover__title panel-title"><a href="${blog_url!}/#blog" title="link to homepage for ${blog_title!}" class="blog-button">${blog_title!}</a></h1>
        <#if settings.subtitle?? && settings.subtitle!=''>
        <span class="panel-cover__subtitle panel-subtitle">${settings.subtitle!}</span>
        </#if>
        <hr class="panel-cover__divider" />
        <p class="panel-cover__description">${user.description!}</p>
        <hr class="panel-cover__divider panel-cover__divider--secondary" />

        <#if settings.welcome_message?? && settings.welcome_message!=''>
        <p class="panel-cover__description">${settings.welcome_message!}</p>
        </#if>
        
        <div class="navigation-wrapper">
          <div>
            <nav class="cover-navigation cover-navigation--primary">
              <ul class="navigation">
                <li class="navigation__item"><a href="${blog_url!}/#blog" title="${settings.blog_button_description!}" class="blog-button">${settings.blog_button_title!}</a></li>
                <@menuTag method="list">
                  <#list menus?sort_by('priority') as menu>
                      <li class="navigation__item"><a href="${menu.url}" target="${menu.target!}" title="${menu.name}">${menu.name}</a></li>
                  </#list>
                </@menuTag>
              </ul>
            </nav>
          </div>
          
          <div><#include "social.ftl"></div>
        </div>
      </div>
    </div>

    <#if settings.cover_color?? && settings.cover_color != 'empty'>
    <div class="panel-cover--overlay cover-${settings.cover_color!}"></div>
    <#else>
    <div class="panel-cover--overlay cover-disabled"></div>
    </#if>
  </div>
</header>

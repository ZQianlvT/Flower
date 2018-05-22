<%--
  Created by IntelliJ IDEA.
  User: 徐哲哲
  Date: 2018/5/21
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>正在进行的讨论 - Tower</title>
    <meta name="renderer" content="webkit">
    <meta name="baidu-site-verification" content="qLDoHdGnb64RHlkm">
    <meta name="alexaVerifyID" content="SIgQikd9LazsFz9M1vPBaQyC4Gw">

    <link rel="dns-prefetch" href="//avatar.tower.im">
    <link rel="dns-prefetch" href="//atttachments.tower.im">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" sizes="32x32">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" sizes="64x64">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" sizes="128x128">
    <link rel="apple-touch-icon-precomposed"
          href="${pageContext.request.contextPath}/images/icon@512-c7c654c8348a4af697bb86f952f57923247c48b88fbbed1a472839eb800d2000.png">

    <link rel="stylesheet" media="all"
          href="${pageContext.request.contextPath}/css/application-b82ad007940d21bea7a8c87658d6aa956d8b0aeb0ec12ff0c8282dbb97ee1085.css"/>
    <script src="${pageContext.request.contextPath}/js/application-6079413f7ac9d58f25bf968fe88bbd90bc60f812c817db4644fb1d2543bce6d0.js"></script>


    <meta name="csrf-param" content="authenticity_token"/>
    <meta name="csrf-token"
          content="WA6NKzBTjLuh+2MiO8VlA5CaO4cHEokLaos6Y7n9GTx3MYx99MvoDH7jxjNxcoFSkjVi7yFP6vJzIY6Bre85SQ=="/>
</head>

<body class="">
<div id="page-loading-mask"></div>

<div class="wrapper">


    <div class="header">
        <div class="header-container">
            <h1 class="logo">
                <a href="${pageContext.request.contextPath}/base/goURL/team/updateTeam" class="link-team-menu">
                    alikes
                </a>
            </h1>

            <ul class="nav">
                <li class="" id="nav-project">
                    <a href="${pageContext.request.contextPath}/base/goURL/project/listProject">项目</a>
                </li>
                <li class="dividing"></li>
                <li class="" id="nav-calendar">
                    <a href="${pageContext.request.contextPath}/base/goURL/calendar/calendar">日历</a>
                </li>
                <li class="dividing"></li>
                <li class="" id="nav-members">
                    <a href="${pageContext.request.contextPath}/base/goURL/team/listTeam">团队</a>
                </li>

                <li id="nav-upgrade">
                    <a href="#"
                       class="link-remaining" data-tower-pro="header-upgrade-ad">
                        本软件完全免费，并不禁止传播。
                    </a>
                </li>

            </ul>

            <div class="command-bar">
                <div class="account-info">
                    <div class="member-settings">
                        <a class="link-member-menu ab-test-old" href="javascript:;" data-new-feature="false">
                            <span class="twr twr-caret-down"></span>
                            <img class="avatar" src="${pageContext.request.contextPath}/images/noon.jpg" alt="Noon"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script id="tpl-member-menu" type="text/html">
        <ul class="menu">
            <li><a href="${pageContext.request.contextPath}/base/goURL/user/updateUser">个人设置</a>
            </li>
            <li class="part-line"></li>
            <li><a rel="nofollow" data-method="DELETE" href="${pageContext.request.contextPath}/user/exit">退出</a></li>
        </ul>
    </script>


    <div class="container workspace">
        <div class="page "
             data-url="/projects/e26956389763492f891259d7d9c5b94d">
            <a href="/projects/e26956389763492f891259d7d9c5b94d" class="link-page-behind" data-stack data-stack-fluid>Flower</a>
        </div>
        <div class="page">


            <div class="page-inner " data-since="2018-05-21 13:20:22 UTC"


                 data-guest-unlockable
                 data-project-creator="f7e254d7f54e40dbb93a33b737752fbc"
                 data-page-name="正在进行的讨论" id="page-topics">

                <h3 class="page-title ">
                    正在进行的讨论
                    <span class="twr twr-chevron-down"></span>
                </h3>

                <div class="editor-wrapper">
                    <div class="editor-placeholder fake-textarea" data-droppable>点击发起讨论</div>

                    <form class="form form-editor form-new-discussion"
                          action="/projects/e26956389763492f891259d7d9c5b94d/messages/" method="post" data-remote="true"
                          data-type="json">
                        <div class="form-item">
                            <div class="form-field">
                                <input tabindex="1" type="text" name="subject" id="txt-title" placeholder="话题"
                                       data-validate="length:0,255" data-validate-msg="话题最长255个字符"
                                       data-autosave="project-e26956389763492f891259d7d9c5b94d-new-message-title"/>
                            </div>
                        </div>
                        <div class="form-item">
                            <div class="form-field">
            <textarea tabindex="1" name="content" id="txt-content" class="hide" placeholder="说点什么..."
                      data-mention-group="e26956389763492f891259d7d9c5b94d"
                      data-validate="custom" data-autosave="new-message-content"></textarea>
                                <input type="hidden" name="is_html" value="1">
                            </div>
                        </div>
                        <div class="form-item visitor-lock" data-visible-to="member">
                            <div class="form-field">
                                <label>
                                    <input type="checkbox" name="invisible_for_visitor" class="cb-visitor-lock"
                                           value="1"/>
                                    对访客隐藏这个讨论
                                </label>
                            </div>
                        </div>
                        <div class="form-item notify">
                            <div class="notify-title">
                                <div class="notify-title-title">发送通知给：</div>
                                <div class="notify-title-select">
                                    <span data-subgroup="-1" class="group-select" unselectable="on">所有人</span>
                                </div>
                            </div>
                            <div class="form-field">
                                <ul class="member-list">
                                    <li>
                                        <label>
                                            <input type="checkbox" tabIndex="-1"
                                                   value="ce2b30066f034bf9a69113963da165fd"
                                                   data-subgroup="[]"/>
                                            <span title="浮点农国">浮点农国</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox" tabIndex="-1"
                                                   value="f7e254d7f54e40dbb93a33b737752fbc"
                                                   data-subgroup="[]"/>
                                            <span title="OrionPax">OrionPax</span>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="form-buttons">
                            <button tabindex="1" class="btn btn-primary" id="btn-post" type="submit"
                                    data-disable-with="正在提交...">发起讨论
                            </button>
                            <a tabindex="2" href="javascript:;" class="btn btn-x" id="link-cancel-post">取消</a>
                        </div>
                    </form>


                </div>

                <div class="init init-discussion hide">
                    <p class="title">
                        所有讨论都已结束
                    </p>
                </div>

                <div class="messages">
                    <div class="message "
                         data-last-comment-at="2018-05-17 15:25:31 +0800"
                         data-guid="a96ccdc538634352a7703d20a36a6608">

                        <div class="message-actions actions" data-visible-to="member">
                            <div class="inr">
                                <a href="/projects/e26956389763492f891259d7d9c5b94d/topics/a96ccdc538634352a7703d20a36a6608/stick"
                                   class="stick" title="置顶"
                                   data-method="post" data-remote="true" data-loading="true">
                                    <i class="twr twr-arrow-circle-up"></i>
                                </a>
                                <a href="/projects/e26956389763492f891259d7d9c5b94d/topics/a96ccdc538634352a7703d20a36a6608/unstick"
                                   class="unstick" title="取消置顶"
                                   data-method="post" data-remote="true" data-loading="true">
                                    <i class="twr twr-arrow-circle-up"></i>
                                </a>
                                <a href="/projects/e26956389763492f891259d7d9c5b94d/topics/a96ccdc538634352a7703d20a36a6608/archive"
                                   class="archive" title="结束讨论"
                                   data-method="post" data-remote="true" data-loading="true">
                                    <i class="twr twr-archive-custom"></i>
                                </a>
                                <a href="/projects/e26956389763492f891259d7d9c5b94d/topics/a96ccdc538634352a7703d20a36a6608/unarchive"
                                   class="unarchive" title="重新打开讨论"
                                   data-method="post" data-remote="true" data-loading="true">
                                    <i class="twr twr-unarchive"></i>
                                </a>
                            </div>
                        </div>

                        <a title="OrionPax" target="_blank" href="/members/f7e254d7f54e40dbb93a33b737752fbc"><img
                                class="avatar" alt="OrionPax"
                                src="https://avatar.tower.im/3e2790283b5947f7bb2da54a779c60f3"/></a>

                        <div class="name">
                            <a title="OrionPax" data-stack="true" data-stack-root="true"
                               href="/members/f7e254d7f54e40dbb93a33b737752fbc">OrionPax</a>
                        </div>

                        <a data-stack
                           href="/projects/e26956389763492f891259d7d9c5b94d/messages/bbdc9b57608446f0978d6edadc712459"
                           class="message-link">

        <span class="message-title">
                <span class="message-rest">测试讨论</span>
        </span>
                            <span class="message-content">
            巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉
        </span>
                        </a>

                        <span class="time" title="2018-05-17" data-readable-time="2018-05-17T15:25:31+08:00"></span>


                        <div class="comment-info">

                            <a class="comments-count" data-stack="true"
                               href="/projects/e26956389763492f891259d7d9c5b94d/messages/bbdc9b57608446f0978d6edadc712459">1</a>
                        </div>
                    </div>

                </div>

                <a href="javascript:;" id="btn-load-more">加载更多内容</a>

                <script type="text/html" id="tpl-topics-select">
                    <ul>
                        <li>
                            <a href="/projects/e26956389763492f891259d7d9c5b94d/topics" class="active">
                                <i class="twr twr-clock-o"></i> 正在进行
                            </a>
                        </li>
                        <li>
                            <a href="/projects/e26956389763492f891259d7d9c5b94d/topics?finish=true" class="">
                                <i class="twr twr-inbox"></i> 已经结束
                            </a>
                        </li>
                    </ul>
                </script>
            </div>

        </div>
    </div>
    <div class="footer">
        &copy; 彩程设计
    </div>


</div>

<input type="hidden" id="d18n-enabled" value="false">
<input type="hidden" id="server-time" value="2018-05-21 21:20:22">

<input type="hidden" id="team-guid" value="982b79584a39484eb9e17459a6e1deff">
<input type="hidden" id="team-name" value="HYLT">
<input type="hidden" id="team-enable-pusher" value="true">

<input type="hidden" id="user-id" value="7432036">
<input type="hidden" id="user-email" value="2449832339@qq.com">

<input type="hidden" id="unused-bubbles" value="12,13">
<input type="hidden" id="member-id" value="12535517">
<input type="hidden" id="member-guid" value="ce2b30066f034bf9a69113963da165fd">
<input type="hidden" id="member-nickname" value="浮点农国">
<input type="hidden" id="member-avatar" value="/assets/default_avatars/noon.jpg">
<input type="hidden" id="member-timezone" value="Asia/Shanghai">
<input type="hidden" id="conn-guid" value="6db1c56d-4be3-45e7-84c2-fc4566add7e3">


<input type="hidden" id="electron" value="false">



</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 徐哲哲
  Date: 2018/5/21
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

    <script type="text/javascript">window.NREUM || (NREUM = {});
    NREUM.info = {
        "beacon": "bam.nr-data.net",
        "errorBeacon": "bam.nr-data.net",
        "licenseKey": "e644b8e723",
        "applicationID": "17322787",
        "transactionName": "el8PEkJZWg4BR04SX0lZAhUfX1gGAU0=",
        "queueTime": 0,
        "applicationTime": 139,
        "agent": ""
    }</script>
    <script type="text/javascript">window.NREUM || (NREUM = {}), __nr_require = function (e, t, n) {
        function r(n) {
            if (!t[n]) {
                var o = t[n] = {exports: {}};
                e[n][0].call(o.exports, function (t) {
                    var o = e[n][1][t];
                    return r(o || t)
                }, o, o.exports)
            }
            return t[n].exports
        }

        if ("function" == typeof __nr_require) return __nr_require;
        for (var o = 0; o < n.length; o++) r(n[o]);
        return r
    }({
        1: [function (e, t, n) {
            function r() {
            }

            function o(e, t, n) {
                return function () {
                    return i(e, [f.now()].concat(u(arguments)), t ? null : this, n), t ? void 0 : this
                }
            }

            var i = e("handle"), a = e(2), u = e(3), c = e("ee").get("tracer"), f = e("loader"), s = NREUM;
            "undefined" == typeof window.newrelic && (newrelic = s);
            var p = ["setPageViewName", "setCustomAttribute", "setErrorHandler", "finished", "addToTrace", "inlineHit", "addRelease"],
                d = "api-", l = d + "ixn-";
            a(p, function (e, t) {
                s[t] = o(d + t, !0, "api")
            }), s.addPageAction = o(d + "addPageAction", !0), s.setCurrentRouteName = o(d + "routeName", !0), t.exports = newrelic, s.interaction = function () {
                return (new r).get()
            };
            var m = r.prototype = {
                createTracer: function (e, t) {
                    var n = {}, r = this, o = "function" == typeof t;
                    return i(l + "tracer", [f.now(), e, n], r), function () {
                        if (c.emit((o ? "" : "no-") + "fn-start", [f.now(), r, o], n), o) try {
                            return t.apply(this, arguments)
                        } catch (e) {
                            throw c.emit("fn-err", [arguments, this, e], n), e
                        } finally {
                            c.emit("fn-end", [f.now()], n)
                        }
                    }
                }
            };
            a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","), function (e, t) {
                m[t] = o(l + t)
            }), newrelic.noticeError = function (e) {
                "string" == typeof e && (e = new Error(e)), i("err", [e, f.now()])
            }
        }, {}], 2: [function (e, t, n) {
            function r(e, t) {
                var n = [], r = "", i = 0;
                for (r in e) o.call(e, r) && (n[i] = t(r, e[r]), i += 1);
                return n
            }

            var o = Object.prototype.hasOwnProperty;
            t.exports = r
        }, {}], 3: [function (e, t, n) {
            function r(e, t, n) {
                t || (t = 0), "undefined" == typeof n && (n = e ? e.length : 0);
                for (var r = -1, o = n - t || 0, i = Array(o < 0 ? 0 : o); ++r < o;) i[r] = e[t + r];
                return i
            }

            t.exports = r
        }, {}], 4: [function (e, t, n) {
            t.exports = {exists: "undefined" != typeof window.performance && window.performance.timing && "undefined" != typeof window.performance.timing.navigationStart}
        }, {}], ee: [function (e, t, n) {
            function r() {
            }

            function o(e) {
                function t(e) {
                    return e && e instanceof r ? e : e ? c(e, u, i) : i()
                }

                function n(n, r, o, i) {
                    if (!d.aborted || i) {
                        e && e(n, r, o);
                        for (var a = t(o), u = m(n), c = u.length, f = 0; f < c; f++) u[f].apply(a, r);
                        var p = s[y[n]];
                        return p && p.push([b, n, r, a]), a
                    }
                }

                function l(e, t) {
                    v[e] = m(e).concat(t)
                }

                function m(e) {
                    return v[e] || []
                }

                function w(e) {
                    return p[e] = p[e] || o(n)
                }

                function g(e, t) {
                    f(e, function (e, n) {
                        t = t || "feature", y[n] = t, t in s || (s[t] = [])
                    })
                }

                var v = {}, y = {},
                    b = {on: l, emit: n, get: w, listeners: m, context: t, buffer: g, abort: a, aborted: !1};
                return b
            }

            function i() {
                return new r
            }

            function a() {
                (s.api || s.feature) && (d.aborted = !0, s = d.backlog = {})
            }

            var u = "nr@context", c = e("gos"), f = e(2), s = {}, p = {}, d = t.exports = o();
            d.backlog = s
        }, {}], gos: [function (e, t, n) {
            function r(e, t, n) {
                if (o.call(e, t)) return e[t];
                var r = n();
                if (Object.defineProperty && Object.keys) try {
                    return Object.defineProperty(e, t, {value: r, writable: !0, enumerable: !1}), r
                } catch (i) {
                }
                return e[t] = r, r
            }

            var o = Object.prototype.hasOwnProperty;
            t.exports = r
        }, {}], handle: [function (e, t, n) {
            function r(e, t, n, r) {
                o.buffer([e], r), o.emit(e, t, n)
            }

            var o = e("ee").get("handle");
            t.exports = r, r.ee = o
        }, {}], id: [function (e, t, n) {
            function r(e) {
                var t = typeof e;
                return !e || "object" !== t && "function" !== t ? -1 : e === window ? 0 : a(e, i, function () {
                    return o++
                })
            }

            var o = 1, i = "nr@id", a = e("gos");
            t.exports = r
        }, {}], loader: [function (e, t, n) {
            function r() {
                if (!x++) {
                    var e = h.info = NREUM.info, t = d.getElementsByTagName("script")[0];
                    if (setTimeout(s.abort, 3e4), !(e && e.licenseKey && e.applicationID && t)) return s.abort();
                    f(y, function (t, n) {
                        e[t] || (e[t] = n)
                    }), c("mark", ["onload", a() + h.offset], null, "api");
                    var n = d.createElement("script");
                    n.src = "https://" + e.agent, t.parentNode.insertBefore(n, t)
                }
            }

            function o() {
                "complete" === d.readyState && i()
            }

            function i() {
                c("mark", ["domContent", a() + h.offset], null, "api")
            }

            function a() {
                return E.exists && performance.now ? Math.round(performance.now()) : (u = Math.max((new Date).getTime(), u)) - h.offset
            }

            var u = (new Date).getTime(), c = e("handle"), f = e(2), s = e("ee"), p = window, d = p.document,
                l = "addEventListener", m = "attachEvent", w = p.XMLHttpRequest, g = w && w.prototype;
            NREUM.o = {
                ST: setTimeout,
                SI: p.setImmediate,
                CT: clearTimeout,
                XHR: w,
                REQ: p.Request,
                EV: p.Event,
                PR: p.Promise,
                MO: p.MutationObserver
            };
            var v = "" + location, y = {
                    beacon: "bam.nr-data.net",
                    errorBeacon: "bam.nr-data.net",
                    agent: "js-agent.newrelic.com/nr-1071.min.js"
                }, b = w && g && g[l] && !/CriOS/.test(navigator.userAgent),
                h = t.exports = {offset: u, now: a, origin: v, features: {}, xhrWrappable: b};
            e(1), d[l] ? (d[l]("DOMContentLoaded", i, !1), p[l]("load", r, !1)) : (d[m]("onreadystatechange", o), p[m]("onload", r)), c("mark", ["firstbyte", u], null, "api");
            var x = 0, E = e(4)
        }, {}]
    }, {}, ["loader"]);</script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"e644b8e723","applicationID":"17322787","transactionName":"el8PEkJZWg4BR04SX0lZAhUfX1gGAU0=","queueTime":0,"applicationTime":158,"agent":""}</script>
    <script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script>

    <title>正在进行的讨论 - Flower</title>
    <meta name="renderer" content="webkit">
    <meta name="baidu-site-verification" content="qLDoHdGnb64RHlkm">
    <meta name="alexaVerifyID" content="SIgQikd9LazsFz9M1vPBaQyC4Gw">

    <link rel="dns-prefetch" href="//avatar.tower.im">
    <link rel="dns-prefetch" href="//atttachments.tower.im">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" type="image/x-icon">
    <link rel="icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" sizes="32x32">
    <link rel="icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" sizes="64x64">
    <link rel="icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" sizes="128x128">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/images/icon@512-c7c654c8348a4af697bb86f952f57923247c48b88fbbed1a472839eb800d2000.png">

    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/application-b82ad007940d21bea7a8c87658d6aa956d8b0aeb0ec12ff0c8282dbb97ee1085.css" />
    <script src="${pageContext.request.contextPath}/js/application-6079413f7ac9d58f25bf968fe88bbd90bc60f812c817db4644fb1d2543bce6d0.js"></script>





    <meta name="csrf-param" content="authenticity_token" />
    <meta name="csrf-token" content="0tLSgYc8Zmx2htpD1hCS869sqAlfP1UYtJX06sYQwPck0i3GSk0rhGlWOwD+YgG7x5I32u8puS01z//Iz7trzA==" />
</head>

<body class="">


<div class="wrapper">



    <div class="header">
        <div class="header-container">
            <h1 class="logo">
                <a href="${pageContext.request.contextPath}/base/goURL/team/updateTeam" class="link-team-menu">
                    ${sessionScope.currTeam.name}
                </a>
            </h1>

            <ul class="nav">
                <li class="" id="nav-project">
                    <a href="${pageContext.request.contextPath}/project/listProject">项目</a>
                </li>
                <li class="dividing"></li>
                <li class="" id="nav-calendar">
                    <a href="${pageContext.request.contextPath}/calendar/prepareCalendar">日历</a>
                </li>
                <li class="dividing"></li>
                <li class="" id="nav-members">
                    <a href="${pageContext.request.contextPath}/team/listTeam">团队</a>
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
                            <img class="avatar" src="${pageContext.request.contextPath}${sessionScope.currUser.img}" alt="Noon"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script id="tpl-member-menu" type="text/html">
        <ul class="menu">
            <li><a  href="${pageContext.request.contextPath}/user/findUser">个人设置</a>
            </li>
            <li class="part-line"></li>
            <li><a rel="nofollow" data-method="DELETE" href="${pageContext.request.contextPath}/user/exit">退出</a></li>
        </ul>
    </script>



    <div class="container workspace simple-stack simple-stack-transition"><div class="page page-root simple-pjax page-behind" style=""><a class="link-page-behind" href="${pageContext.request.contextPath}/project/detailProject?id=${requestScope.discussion.pId}">Flower</a></div><div class="page page-1 simple-pjax" style=""><div class="page-inner finished" data-since="2018-05-21 02:25:24 UTC" data-guest-unlockable="" data-project-creator="f7e254d7f54e40dbb93a33b737752fbc" data-page-name="已经结束的讨论" id="page-topics">

        <h3 class="page-title ">
            已经结束的讨论
            <span class="twr twr-chevron-down"></span>
        </h3>

        <div class="editor-wrapper">
            <div class="editor-placeholder fake-textarea" data-droppable="">点击发起讨论</div>

            <form class="form form-editor form-new-discussion" action="https://tower.im/projects/e26956389763492f891259d7d9c5b94d/messages/" method="post" data-remote="true" data-type="json">
                <div class="form-item">
                    <div class="form-field">
                        <input tabindex="1" type="text" name="subject" id="txt-title" placeholder="话题" data-validate="length:0,255" data-validate-msg="话题最长255个字符" data-autosave="project-e26956389763492f891259d7d9c5b94d-new-message-title">
                    </div>
                </div>
                <div class="form-item">
                    <div class="form-field">
                        <textarea tabindex="1" name="content" id="txt-content" class="hide" placeholder="说点什么..." data-mention-group="e26956389763492f891259d7d9c5b94d" data-validate="custom" data-autosave="new-message-content"></textarea>
                        <input type="hidden" name="is_html" value="1">
                    </div>
                </div>
                <div class="form-item visitor-lock" data-visible-to="member">
                    <div class="form-field">
                        <label>
                            <input type="checkbox" name="invisible_for_visitor" class="cb-visitor-lock" value="1">
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
                                    <input type="checkbox" tabindex="-1" value="ce2b30066f034bf9a69113963da165fd" data-subgroup="[]">
                                    <span title="浮点农国">浮点农国</span>
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" tabindex="-1" value="f7e254d7f54e40dbb93a33b737752fbc" data-subgroup="[]">
                                    <span title="OrionPax">OrionPax</span>
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="form-buttons">
                    <button tabindex="1" class="btn btn-primary" id="btn-post" type="submit" data-disable-with="正在提交...">发起讨论</button>
                    <a tabindex="2" href="javascript:;" class="btn btn-x" id="link-cancel-post">取消</a>
                </div>
            </form>


        </div>

        <div class="init init-discussion hide">
            <p class="title">
                所有讨论都在进行
            </p>
        </div>

        <div class="messages">
            <c:forEach items="${requestScope.discussionList}" var="discussion">
            <div class="message " data-last-comment-at="2018-05-21 10:24:06 +0800" data-guid="b1538a5f695446dda8a0752f44fd8f74">

                <div class="message-actions actions" data-visible-to="member">
                    <div class="inr">


                        <a href="${pageContext.request.contextPath}/discussion/openDiscussion?id=${discussion.id}&pId=${discussion.pId}" class="unarchive" title="重新打开讨论" data-method="post"  data-loading="true">
                            <i class="twr twr-unarchive"></i>
                        </a>
                    </div>
                </div>

                <span title="OrionPax" target="_blank" href="https://tower.im/members/f7e254d7f54e40dbb93a33b737752fbc"><img class="avatar" alt="OrionPax" src="${pageContext.request.contextPath}${discussion.startUser.img}"></span>

                <div class="name">
                    <a title="OrionPax" data-stack="true" data-stack-root="true" href="https://tower.im/members/f7e254d7f54e40dbb93a33b737752fbc">${discussion.startUser.name}</a>
                </div>

                <a href="${pageContext.request.contextPath}/discussion/detailDiscussion?id=${discussion.id}" class="message-link">

        <span class="message-title">
                <span class="message-rest">${discussion.name}</span>
        </span>
                    <span class="message-content">
                        ${discussion.remark}
        </span>
                </a>

                <span class="time" title="<fmt:formatDate value='${discussion.startTime}' pattern="yyyy-MM-dd HH:mm:ss"/>" data-readable-time="<fmt:formatDate value='${discussion.startTime}' pattern="yyyy-MM-dd HH:mm:ss"/>"><fmt:formatDate value='${discussion.startTime}' pattern="yyyy-MM-dd HH:mm:ss"/></span>



            </div>
            </c:forEach>
        </div>

        <a href="javascript:;" id="btn-load-more" class="over">没有更多内容了</a>

        <script type="text/html" id="tpl-topics-select">
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/discussion/continueDiscussion?pId=${requestScope.pId}">
                        <i class="twr twr-clock-o"></i> 正在进行
                    </a>
                </li>
                <li>
                    <a href="#" class="active">
                        <i class="twr twr-inbox"></i> 已经结束
                    </a>
                </li>
            </ul>
        </script>
    </div></div></div>
    <div class="footer">
        © 晴天设计
    </div>


</div>

<input type="hidden" id="d18n-enabled" value="false">
<input type="hidden" id="server-time" value="2018-05-21 10:18:29">

<input type="hidden" id="team-guid" value="982b79584a39484eb9e17459a6e1deff">
<input type="hidden" id="team-name" value="HYLT">
<input type="hidden" id="team-enable-pusher" value="true">

<input type="hidden" id="user-id" value="7431820">
<input type="hidden" id="user-email" value="1875709296@qq.com">

<input type="hidden" id="unused-bubbles" value="12,13">
<input type="hidden" id="member-id" value="12534361">
<input type="hidden" id="member-guid" value="f7e254d7f54e40dbb93a33b737752fbc">
<input type="hidden" id="member-nickname" value="OrionPax">
<input type="hidden" id="member-avatar" value="https://avatar.tower.im/3e2790283b5947f7bb2da54a779c60f3">
<input type="hidden" id="member-timezone" value="Asia/Shanghai">
<input type="hidden" id="conn-guid" value="e665f9cf-f87e-423f-9d95-548e31ce2ac8">

<input type="hidden" id="member-owner">

<input type="hidden" id="member-admin">

<input type="hidden" id="electron" value="false">

<script>
    //<![CDATA[
    window.gon={};gon.oss_direct_upload=true;
    //]]>
</script>
<script id="IntercomSettingsScriptTag">window.intercomSettings = {"hide_default_launcher":true,"guid":"f7e254d7f54e40dbb93a33b737752fbc","name":"OrionPax","email":"1875709296@qq.com","user_id":12534361,"desktop_notification_enabled":false,"wechat_notification_enabled":true,"email_notification_enabled":false,"ai_notify_enabled":false,"role":2,"user_guid":"dae5776700474b90bcb1038c52d18948","avatar":"https://avatar.tower.im/3e2790283b5947f7bb2da54a779c60f3","comment":null,"has_wechat":false,"wechat":null,"has_dingtalk":false,"dingtalk":"OrionPax","two_factor_auth":false,"teams":1,"projects":1,"starred_projects":0,"calendars":0,"open_todos":0,"closed_todos":5,"messages_created":1,"uploads_created":0,"attachments_uploaded":0,"comments_created":1,"resources_starred":0,"weekly_reports_created":0,"events_involved":4,"unread_notifications":0,"email_received":0,"data_updated_at":"2018-05-20T04:41:45.431Z","user_hash":"619810073cd033088c93746bc1ac73423230d332c7283a8c76e7aed1be86e789","app_id":"xbtsuf77","company":{"id":701217,"name":"HYLT","created_at":"2018-05-17T01:24:47.000Z","guid":"982b79584a39484eb9e17459a6e1deff","next_charge_date":null,"plan":"pro_trial","ever_paid":false,"total_paid":0,"alipay_used":0,"haopay_used":0,"owner_guid":"f7e254d7f54e40dbb93a33b737752fbc","has_dingtalk":false,"has_yiqixie":false,"has_api":false,"members":1,"subgroups":0,"active_projects":1,"archived_projects":0,"project_groups":0,"project_templates":0,"calendars":0,"calendar_events":2,"messages":1,"comments":1,"open_todos":0,"closed_todos":5,"documents":0,"files":0,"file_bytesize":0.0,"answers":0,"is_upgraded_to_plus":false}};(function(){var w=window;var ic=w.Intercom;if(typeof ic==="function"){ic('reattach_activator');ic('update',intercomSettings);}else{var d=document;var i=function(){i.c(arguments)};i.q=[];i.c=function(args){i.q.push(args)};w.Intercom=i;function l(){var s=d.createElement('script');s.type='text/javascript';s.async=true;s.src='https://widget.intercom.io/widget/xbtsuf77';var x=d.getElementsByTagName('script')[0];x.parentNode.insertBefore(s,x);}if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}};})()</script>

<script type="text/javascript">
    (function() {
        setTimeout(function() {
            if (!document.querySelector('iframe#intercom-frame')) {
                var w = window;
                var ic = w.Intercom;
                if (ic.toString().length < 100) {
                    var d = document;
                    var i = function() { i.c(arguments) };
                    i.q = [];
                    i.c = function(args) { i.q.push(args) };
                    w.Intercom = i;

                    function l() {
                        var s = d.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = 'https://jsintercom.tuanliao.com/widgets/xbtsuf77';
                        var x = d.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }

                    l();
                }
            }
        }, 5000)
    })()
</script>



<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-100449807-1', 'auto', { userId: '12534361' });
    ga('create', 'UA-100449807-2', 'auto', 'teamTracker', { userId: '701217' });

    ga('send', 'pageview', {
        'userId': '12534361',
        'dimension1': '701217 : HYLT',
        'dimension2': '7431820',
        'dimension3': 'pro_trial'
    });
    ga('teamTracker.send', 'pageview', {
        'userId': '701217',
        'dimension1': 'HYLT',
        'dimension2': 11,
        'dimension3': 'pro_trial'
    });

    ga('set', 'dimension4', 'false');
</script>




<textarea tabindex="-1" style="position: absolute; top: -999px; left: 0px; right: auto; bottom: auto; border: 0px; box-sizing: content-box; word-wrap: break-word; overflow: hidden; height: 0px !important; min-height: 0px !important; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 16px; font-weight: 400; font-style: normal; letter-spacing: 0px; text-transform: none; word-spacing: 0px; text-indent: 0px; line-height: 19.2px; width: 240px;" class="autosizejs"></textarea><div class="offline-ui offline-ui-up"><div class="offline-ui-content"></div><a href="https://tower.im/projects/e26956389763492f891259d7d9c5b94d/topics/?finish=true" class="offline-ui-retry"></a></div><iframe id="intercom-frame" style="display: none;" src="./listDiscussion2_files/saved_resource.html"></iframe><div id="intercom-container" style="position: fixed; width: 0px; height: 0px; bottom: 0px; right: 0px; z-index: 2147483647;"><div data-reactroot="" class="intercom-app"><span></span><span></span><!-- react-empty: 4 --><span></span><!-- react-empty: 6 --></div></div><div class="simple-filedrop" style="display: none;">
    <div class="filedrop-dropzone">
        <div class="filedrop-hints">拖拽到这里上传</div>
    </div>
</div></body></html></html>
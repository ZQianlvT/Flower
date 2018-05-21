<%--
  Created by IntelliJ IDEA.
  User: 徐哲哲
  Date: 2018/5/21
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <script type="text/javascript">window.NREUM || (NREUM = {});
    NREUM.info = {
        "beacon": "bam.nr-data.net",
        "errorBeacon": "bam.nr-data.net",
        "licenseKey": "e644b8e723",
        "applicationID": "17322787",
        "transactionName": "el8PEkJZWg4BR04LVVRSBBRDGUUHEEEICFdK",
        "queueTime": 0,
        "applicationTime": 240,
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
    <script type="text/javascript">window.NREUM || (NREUM = {});
    NREUM.info = {
        "beacon": "bam.nr-data.net",
        "errorBeacon": "bam.nr-data.net",
        "licenseKey": "e644b8e723",
        "applicationID": "17322787",
        "transactionName": "el8PEkJZWg4BR04LVVRSBBRDGUUHEEEICFdK",
        "queueTime": 0,
        "applicationTime": 240,
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

    <title>个人设置 - Tower</title>
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
          content="ymOgqeopJ1KJnmKbJFAiZZ5WT/nobeYe2G5QzXjN2Y63WZqeH1kFZ1MXVduWYaaYCrji5Mt4Sm9sFq5ExnDSrw=="/>
</head>

<body class="">
<div id="page-loading-mask"></div>

<div class="wrapper">


    <div class="header">
        <div class="header-container">
            <h1 class="logo">
                <a href="${pageContext.request.contextPath}/base/goURL/updateTeam" class="link-team-menu">
                    alikes
                    <%--<span class="name">alikes</span>--%>
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
                       class="link-remaining" data-tower-pro="header-upgrade-ad" >
                        本软件完全免费，并不禁止传播。
                    </a>
                </li>

            </ul>

            <div class="command-bar">
                <div class="search-wrap">
                    <a href="#" class="link-search" title="搜索"><i class="twr twr-search"></i></a>
                    <form id="form-search" class="form" method="get"
                          action="${pageContext.request.contextPath}/project/search">
                        <input id="txt-search" type="text" class="keyword no-border" name="keyword" placeholder="搜索"
                               autocomplete="off"/>
                    </form>
                </div>

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
            <li><a data-stack="true" data-stack-root="true" href="/members/231e0ddd353440c883f9874a555f8adc/settings">个人设置</a>
            </li>
            <li><a data-stack="true" data-stack-root="true"
                   href="/members/231e0ddd353440c883f9874a555f8adc/notification_settings">通知设置</a></li>
            <li><a data-stack="true" data-stack-root="true"
                   href="/members/231e0ddd353440c883f9874a555f8adc/stars">我的关注</a></li>
            <li class="part-line"></li>
            <li><a target="_blank" href="/choices">企业服务精选</a></li>
            <li><a target="_blank" href="/downloads">下载客户端</a></li>
            <li><a target="_blank" href="/help">帮助中心</a></li>
            <li><a id="link-roadmap" target="_blank" href="/roadmap">最新功能</a></li>
            <li><a rel="nofollow" data-method="DELETE" href="/users/sign_out">退出</a></li>
        </ul>
    </script>
    <script id="tpl-team-menu" type="text/html">
        <ul class="menu">
            <li><a href="/teams/7feef4ba8611443ebd06db497618beb4/settings" data-stack data-stack-root>团队账户</a></li>

            <li><a href="/teams/7feef4ba8611443ebd06db497618beb4/external_apps" data-stack data-stack-root>应用中心</a></li>

            <li><a href="/teams/7feef4ba8611443ebd06db497618beb4/invite/new" data-stack data-stack-root>邀请成员</a></li>

            <li>
                <a class="js-feature-migrated" data-migrated-feature="team-stats" href="javascript:;">团队统计</a>
            </li>

            <li>
                <a href="/teams/7feef4ba8611443ebd06db497618beb4/upgrade" data-stack data-stack-root>
                    了解 Pro 版
                </a>
            </li>

            <p class="title"><span>切换团队</span></p>
            <ul class="menu scroll team-list">
                <li>
                    <a href="/teams/982b79584a39484eb9e17459a6e1deff">HYLT
                    </a>
                </li>
            </ul>
            <li class="part-line"></li>

            <li class="small"><a href="/launchpad?skip=1">创建/管理团队</a></li>
        </ul>
    </script>


    <div class="container workspace">
        <div class="page">

            <div class="page-inner page-member-settings" id="page-member-settings" data-page-name="个人设置">
                <p class="page-tip moveout" style="display:none;"></p>
                <h3 class="page-title">个人设置</h3>

                <a href="javascript:;" id="btn-del-member"
                   class="link-delete ">退出团队</a>

                <form class="form settings-form" action="/members/231e0ddd353440c883f9874a555f8adc/settings"
                      method="post" data-remote="true">
                    <label class="form-item upload-avatar" data-droppable>
                        <div class="avatar-wrapper">
                            <img class="avatar" src="${pageContext.request.contextPath}/images/noon.jpg"/>
                            <div class="loading"></div>
                        </div>
                        <div class="link-upload" data-url="/members/231e0ddd353440c883f9874a555f8adc/avatars/">
                            <a id="btn-upload" href="javascript:;">选择新头像</a>
                        </div>
                        <p class="desc">你可以选择 png/jpg 图片作为头像</p>
                    </label>

                    <div class="form-item">
                        <div class="form-label">
                            <label for="txt-nickname">名字</label>
                        </div>
                        <div class="form-field">
                            <input type="text" name="nickname" id="txt-nickname" autocomplete="off" value="浮点农国"
                                   data-validate="required;length:1,30" data-validate-msg="好像还没有输入名字呢;名字最长30个字符"/>
                        </div>
                    </div>

                    <div class="form-item">
                        <div class="form-label">
                            <label for="txt-email">邮箱</label>
                        </div>
                        <div class="form-field">
                            <input type="text" name="email" id="txt-email" value="2449832339@qq.com" disabled/>
                            <a data-stack="true" class="modify-email"
                               href="/members/231e0ddd353440c883f9874a555f8adc/settings/email">修改邮箱</a>
                        </div>
                    </div>

                    <div class="form-item">
                        <div class="form-label">
                            <label>名片</label>
                        </div>
                        <div class="form-field">
                            <div class="member-card">
                                <p><b>浮点农国</b></p>
                                <p class="member-comment">

                                    2449832339@qq.com
                                </p>
                                <p class="member-comment"></p>
                            </div>
                            <p class="desc">
                                <a data-stack="true" href="/members/231e0ddd353440c883f9874a555f8adc/edit">设置在 alikes
                                    团队中的名片</a>
                                <br>名片仅在当前团队显示，你可以在不同团队填写不同信息。
                            </p>
                        </div>
                    </div>

                    <div class="form-item">
                        <div class="form-label">
                            <label>密码</label>
                        </div>
                        <div class="form-field form-text-field">
                            <a data-stack="true"
                               href="/members/231e0ddd353440c883f9874a555f8adc/settings/password">修改密码</a>
                            <a href="/users/forgot_password">找回密码</a>
                        </div>
                    </div>

                    <div class="form-item">
                        <div class="form-label">
                            <label>手机</label>
                        </div>
                        <div class="form-field form-text-field">
                            <span class="status">未绑定</span>
                            <a data-type="script" data-loading="true" data-remote="true" data-method="get"
                               href="/users/cell_phone_confirmation/new">绑定</a>
                            <p class="desc">绑定后，可通过手机号登录和找回密码（即将发布）</p>
                        </div>
                    </div>

                    <div class="form-item form-item-wechat">
                        <div class="form-label">
                            <label>微信</label>
                        </div>
                        <div class="form-field form-text-field">
                            <span class="status">未绑定</span>
                            <a class="link-bind-wechat" href="javascript:;">绑定</a>
                            <p class="desc">绑定后，可直接使用微信登录 Tower 「桌面版」和「微信版」</p>
                        </div>
                    </div>


                    <div class="form-item">
                        <div class="form-label">
                            <label>双保险</label>
                        </div>
                        <div class="form-field form-text-field">
                            <span class="status">未启用</span>
                            <a class="link-open-tfa" data-stack="true"
                               href="/members/231e0ddd353440c883f9874a555f8adc/settings/two_factor_auth">开启</a>
                            <p class="desc">启用后，每次登录 Tower 都需要使用你的微信进行验证，增强账号安全性</p>
                        </div>
                    </div>

                    <div class="form-item">
                        <div class="form-label">
                            <label for="link-notify-settings">通知设置</label>
                        </div>
                        <div class="form-field form-text-field notification-field">
                            <a class="link-notify-settings" data-stack="true"
                               href="/members/231e0ddd353440c883f9874a555f8adc/notification_settings">修改通知设置</a>
                            <p class="desc">
                                桌面通知：关闭<br/>
                                App 通知：开启<br/>
                                邮件通知：关闭<br/>
                                智能提醒：关闭<br/>
                            </p>
                        </div>
                    </div>

                    <div class="form-item">
                        <div class="form-label">
                            <label for="link-time-zone-settings">时区设置</label>
                        </div>
                        <div class="form-field form-text-field time-zone-field">
                            <p>
                                <select name="user[time_zone]" id="user_time_zone">
                                    <option value="America/Adak">(GMT-10:00) America/Adak</option>
                                    <option value="Hawaii">(GMT-10:00) 夏威夷</option>
                                    <option value="Alaska">(GMT-09:00) 阿拉斯加</option>
                                    <option value="America/Anchorage">(GMT-09:00) America/Anchorage</option>
                                    <option value="America/Metlakatla">(GMT-09:00) America/Metlakatla</option>
                                    <option value="America/Nome">(GMT-09:00) America/Nome</option>
                                    <option value="America/Sitka">(GMT-09:00) America/Sitka</option>
                                    <option value="America/Yakutat">(GMT-09:00) America/Yakutat</option>
                                    <option value="Pacific Time (US &amp; Canada)">(GMT-08:00) 太平洋时区(美国与加拿大)</option>
                                    <option value="America/Boise">(GMT-07:00) America/Boise</option>
                                    <option value="Arizona">(GMT-07:00) 亚利桑那州</option>
                                    <option value="Mountain Time (US &amp; Canada)">(GMT-07:00) 山区时区(美国与加拿大)</option>
                                    <option value="America/Indiana/Knox">(GMT-06:00) America/Indiana/Knox</option>
                                    <option value="America/Indiana/Tell_City">(GMT-06:00) America/Indiana/Tell_City
                                    </option>
                                    <option value="America/Menominee">(GMT-06:00) America/Menominee</option>
                                    <option value="America/North_Dakota/Beulah">(GMT-06:00)
                                        America/North_Dakota/Beulah
                                    </option>
                                    <option value="America/North_Dakota/Center">(GMT-06:00)
                                        America/North_Dakota/Center
                                    </option>
                                    <option value="America/North_Dakota/New_Salem">(GMT-06:00)
                                        America/North_Dakota/New_Salem
                                    </option>
                                    <option value="Central Time (US &amp; Canada)">(GMT-06:00) 中部时区(美国与加拿大)</option>
                                    <option value="America/Detroit">(GMT-05:00) America/Detroit</option>
                                    <option value="America/Indiana/Marengo">(GMT-05:00) America/Indiana/Marengo</option>
                                    <option value="America/Indiana/Petersburg">(GMT-05:00) America/Indiana/Petersburg
                                    </option>
                                    <option value="America/Indiana/Vevay">(GMT-05:00) America/Indiana/Vevay</option>
                                    <option value="America/Indiana/Vincennes">(GMT-05:00) America/Indiana/Vincennes
                                    </option>
                                    <option value="America/Indiana/Winamac">(GMT-05:00) America/Indiana/Winamac</option>
                                    <option value="America/Kentucky/Louisville">(GMT-05:00)
                                        America/Kentucky/Louisville
                                    </option>
                                    <option value="America/Kentucky/Monticello">(GMT-05:00)
                                        America/Kentucky/Monticello
                                    </option>
                                    <option value="Eastern Time (US &amp; Canada)">(GMT-05:00) 东部时区(美国与加拿大)</option>
                                    <option value="Indiana (East)">(GMT-05:00) 印第安那州(东部)</option>
                                    <option value="" disabled="disabled">-------------</option>
                                    <option value="American Samoa">(GMT-11:00) 美属萨摩亚群岛</option>
                                    <option value="International Date Line West">(GMT-11:00) 国际换日线(西)</option>
                                    <option value="Midway Island">(GMT-11:00) 中途岛</option>
                                    <option value="Tijuana">(GMT-08:00) 提华纳</option>
                                    <option value="Chihuahua">(GMT-07:00) 契瓦瓦</option>
                                    <option value="Mazatlan">(GMT-07:00) 马萨特兰</option>
                                    <option value="Central America">(GMT-06:00) 中美洲</option>
                                    <option value="Guadalajara">(GMT-06:00) 瓜达拉哈拉</option>
                                    <option value="Mexico City">(GMT-06:00) 墨西哥市</option>
                                    <option value="Monterrey">(GMT-06:00) 蒙特雷</option>
                                    <option value="Saskatchewan">(GMT-06:00) 萨斯喀彻温</option>
                                    <option value="Bogota">(GMT-05:00) 波哥大</option>
                                    <option value="Lima">(GMT-05:00) 利马</option>
                                    <option value="Quito">(GMT-05:00) 基多</option>
                                    <option value="Atlantic Time (Canada)">(GMT-04:00) 大西洋时间(加拿大)</option>
                                    <option value="Caracas">(GMT-04:00) 卡拉卡斯</option>
                                    <option value="Georgetown">(GMT-04:00) 乔治城</option>
                                    <option value="La Paz">(GMT-04:00) 拉巴斯</option>
                                    <option value="Santiago">(GMT-04:00) 圣地亚哥</option>
                                    <option value="Newfoundland">(GMT-03:30) 纽芬兰</option>
                                    <option value="Brasilia">(GMT-03:00) 巴西利亚</option>
                                    <option value="Buenos Aires">(GMT-03:00) 布宜诺斯艾利斯</option>
                                    <option value="Greenland">(GMT-03:00) 格陵兰</option>
                                    <option value="Montevideo">(GMT-03:00) 蒙得维的亚</option>
                                    <option value="Mid-Atlantic">(GMT-02:00) 大西洋中部</option>
                                    <option value="Azores">(GMT-01:00) 亚速群岛</option>
                                    <option value="Cape Verde Is.">(GMT-01:00) 维德角岛</option>
                                    <option value="Casablanca">(GMT+00:00) 达尔贝达</option>
                                    <option value="Dublin">(GMT+00:00) 都布林</option>
                                    <option value="Edinburgh">(GMT+00:00) 爱丁堡</option>
                                    <option value="Lisbon">(GMT+00:00) 里斯本</option>
                                    <option value="London">(GMT+00:00) 伦敦</option>
                                    <option value="Monrovia">(GMT+00:00) 蒙罗维亚</option>
                                    <option value="UTC">(GMT+00:00) 世界标準时间</option>
                                    <option value="Amsterdam">(GMT+01:00) 阿姆斯特丹</option>
                                    <option value="Belgrade">(GMT+01:00) 贝尔格勒</option>
                                    <option value="Berlin">(GMT+01:00) 柏林</option>
                                    <option value="Bern">(GMT+01:00) 伯恩</option>
                                    <option value="Bratislava">(GMT+01:00) 布拉提斯拉瓦</option>
                                    <option value="Brussels">(GMT+01:00) 布鲁塞尔</option>
                                    <option value="Budapest">(GMT+01:00) 布达佩斯</option>
                                    <option value="Copenhagen">(GMT+01:00) 哥本哈根</option>
                                    <option value="Ljubljana">(GMT+01:00) 卢比安纳</option>
                                    <option value="Madrid">(GMT+01:00) 马德里</option>
                                    <option value="Paris">(GMT+01:00) 巴黎</option>
                                    <option value="Prague">(GMT+01:00) 布拉格</option>
                                    <option value="Rome">(GMT+01:00) 罗马</option>
                                    <option value="Sarajevo">(GMT+01:00) 塞拉耶佛</option>
                                    <option value="Skopje">(GMT+01:00) 史高比耶</option>
                                    <option value="Stockholm">(GMT+01:00) 斯德哥尔摩</option>
                                    <option value="Vienna">(GMT+01:00) 维也纳</option>
                                    <option value="Warsaw">(GMT+01:00) 华沙</option>
                                    <option value="West Central Africa">(GMT+01:00) 中西非时区</option>
                                    <option value="Zagreb">(GMT+01:00) 札格瑞布</option>
                                    <option value="Zurich">(GMT+01:00) 苏黎世</option>
                                    <option value="Athens">(GMT+02:00) 雅典</option>
                                    <option value="Bucharest">(GMT+02:00) 布加勒斯特</option>
                                    <option value="Cairo">(GMT+02:00) 开罗</option>
                                    <option value="Harare">(GMT+02:00) 哈拉雷</option>
                                    <option value="Helsinki">(GMT+02:00) 赫尔辛基</option>
                                    <option value="Jerusalem">(GMT+02:00) 耶路撒冷</option>
                                    <option value="Kaliningrad">(GMT+02:00) 加里宁格勒</option>
                                    <option value="Kyiv">(GMT+02:00) 基辅</option>
                                    <option value="Pretoria">(GMT+02:00) 普勒托利亚</option>
                                    <option value="Riga">(GMT+02:00) 里加</option>
                                    <option value="Sofia">(GMT+02:00) 索菲亚</option>
                                    <option value="Tallinn">(GMT+02:00) 塔林</option>
                                    <option value="Vilnius">(GMT+02:00) 维尔纽斯</option>
                                    <option value="Baghdad">(GMT+03:00) 巴格达</option>
                                    <option value="Istanbul">(GMT+03:00) 伊斯坦堡</option>
                                    <option value="Kuwait">(GMT+03:00) 科威特</option>
                                    <option value="Minsk">(GMT+03:00) 明斯克</option>
                                    <option value="Moscow">(GMT+03:00) 莫斯科</option>
                                    <option value="Nairobi">(GMT+03:00) 奈洛比</option>
                                    <option value="Riyadh">(GMT+03:00) 利雅德</option>
                                    <option value="St. Petersburg">(GMT+03:00) 圣彼得堡</option>
                                    <option value="Volgograd">(GMT+03:00) 伏尔加格勒</option>
                                    <option value="Tehran">(GMT+03:30) 德黑兰</option>
                                    <option value="Abu Dhabi">(GMT+04:00) 阿布达比</option>
                                    <option value="Baku">(GMT+04:00) 巴库</option>
                                    <option value="Muscat">(GMT+04:00) 马斯喀特</option>
                                    <option value="Samara">(GMT+04:00) 萨马拉</option>
                                    <option value="Tbilisi">(GMT+04:00) 提比里斯</option>
                                    <option value="Yerevan">(GMT+04:00) 叶里温</option>
                                    <option value="Kabul">(GMT+04:30) 喀布尔</option>
                                    <option value="Ekaterinburg">(GMT+05:00) 叶卡捷琳堡</option>
                                    <option value="Islamabad">(GMT+05:00) 伊斯兰玛巴德</option>
                                    <option value="Karachi">(GMT+05:00) 喀拉蚩</option>
                                    <option value="Tashkent">(GMT+05:00) 塔什干</option>
                                    <option value="Chennai">(GMT+05:30) 清奈</option>
                                    <option value="Kolkata">(GMT+05:30) 加尔各答</option>
                                    <option value="Mumbai">(GMT+05:30) 孟买</option>
                                    <option value="New Delhi">(GMT+05:30) 新德里</option>
                                    <option value="Sri Jayawardenepura">(GMT+05:30) 科泰</option>
                                    <option value="Kathmandu">(GMT+05:45) 加德满都</option>
                                    <option value="Almaty">(GMT+06:00) 阿拉木图</option>
                                    <option value="Astana">(GMT+06:00) 阿斯塔纳</option>
                                    <option value="Dhaka">(GMT+06:00) 达卡</option>
                                    <option value="Urumqi">(GMT+06:00) 乌鲁木齐</option>
                                    <option value="Rangoon">(GMT+06:30) 仰光</option>
                                    <option value="Bangkok">(GMT+07:00) 曼谷</option>
                                    <option value="Hanoi">(GMT+07:00) 河内</option>
                                    <option value="Jakarta">(GMT+07:00) 雅加达</option>
                                    <option value="Krasnoyarsk">(GMT+07:00) 克拉斯诺亚尔斯克</option>
                                    <option value="Novosibirsk">(GMT+07:00) 新西伯利亚</option>
                                    <option selected="selected" value="Beijing">(GMT+08:00) 北京</option>
                                    <option value="Chongqing">(GMT+08:00) 重庆</option>
                                    <option value="Hong Kong">(GMT+08:00) 香港</option>
                                    <option value="Irkutsk">(GMT+08:00) 伊尔库茨克</option>
                                    <option value="Kuala Lumpur">(GMT+08:00) 吉隆坡</option>
                                    <option value="Perth">(GMT+08:00) 珀斯</option>
                                    <option value="Singapore">(GMT+08:00) 新加坡</option>
                                    <option value="Taipei">(GMT+08:00) 台北</option>
                                    <option value="Ulaanbaatar">(GMT+08:00) 乌兰巴托</option>
                                    <option value="Osaka">(GMT+09:00) 大阪</option>
                                    <option value="Sapporo">(GMT+09:00) 札幌</option>
                                    <option value="Seoul">(GMT+09:00) 首尔</option>
                                    <option value="Tokyo">(GMT+09:00) 东京</option>
                                    <option value="Yakutsk">(GMT+09:00) 雅库茨克</option>
                                    <option value="Adelaide">(GMT+09:30) 阿得雷德</option>
                                    <option value="Darwin">(GMT+09:30) 达尔文</option>
                                    <option value="Brisbane">(GMT+10:00) 布里斯本</option>
                                    <option value="Canberra">(GMT+10:00) 坎培拉</option>
                                    <option value="Guam">(GMT+10:00) 关岛</option>
                                    <option value="Hobart">(GMT+10:00) 荷巴特</option>
                                    <option value="Melbourne">(GMT+10:00) 墨尔本</option>
                                    <option value="Port Moresby">(GMT+10:00) 莫士比港</option>
                                    <option value="Sydney">(GMT+10:00) 雪梨</option>
                                    <option value="Vladivostok">(GMT+10:00) 海参崴</option>
                                    <option value="Magadan">(GMT+11:00) 马加丹</option>
                                    <option value="New Caledonia">(GMT+11:00) 新喀里多尼亚</option>
                                    <option value="Solomon Is.">(GMT+11:00) 索罗门群岛</option>
                                    <option value="Srednekolymsk">(GMT+11:00) 中科雷姆斯克</option>
                                    <option value="Auckland">(GMT+12:00) 奥克兰</option>
                                    <option value="Fiji">(GMT+12:00) 斐济</option>
                                    <option value="Kamchatka">(GMT+12:00) 堪察加</option>
                                    <option value="Marshall Is.">(GMT+12:00) 马绍尔群岛</option>
                                    <option value="Wellington">(GMT+12:00) 威灵顿</option>
                                    <option value="Chatham Is.">(GMT+12:45) 查塔姆</option>
                                    <option value="Nuku&#39;alofa">(GMT+13:00) 努瓜娄发</option>
                                    <option value="Samoa">(GMT+13:00) 萨摩亚</option>
                                    <option value="Tokelau Is.">(GMT+13:00) 托克劳群岛</option>
                                </select>
                            </p>
                        </div>
                    </div>

                    <div class="form-buttons">
                        <button class="btn btn-primary btn-large" id="btn-save" data-disable-with="正在保存..."
                                data-success-text="保存成功">保存
                        </button>
                    </div>
                </form>

                <script type="text/html" id="tpl-unbind-wechat">
                    <div class="unbind-wechat-confirm">
                        <p>确定要解除微信绑定吗？解除后，你将会：</p>
                        <ul>
                            <li>不能用微信扫码登录「桌面版」和「移动版」</li>
                            <li>不能使用 Tower 微信版</li>
                        </ul>
                    </div>
                </script>

                <script type="text/html" id="tpl-del-owner">
                    <h3>身为团队领袖，岂能说退就退。</h3>
                    <p>请将 <a href="/teams/7feef4ba8611443ebd06db497618beb4/settings" data-stack
                             data-stack-root>团队移交他人</a> 之后再行退出。</p>
                </script>

                <script type="text/html" id="tpl-del-member">
                    <form class="form form-del-member-confirm"
                          action="/members/231e0ddd353440c883f9874a555f8adc/kick_out" method="post" data-remote
                          novalidate>
                        <h4 class="simple-dialog-title">退出团队</h4>
                        <p>你将会退出 alikes。</p>
                        <p>如果你确定要这样做，请在下面输入登录密码确认。</p>
                        <p>
                            <input type="password" id="del-member-password" name="password" autocomplete="off"
                                   data-validate="length:6;custom" data-validate-msg="密码输入错误"/>
                        </p>
                        <div class="form-buttons">
                            <button type="submit" class="btn btn-primary">确认退出</button>
                            <button type="button" class="btn btn-x btn-cancel">取消</button>
                        </div>
                    </form>
                </script>

                <script type="text/html" id="tpl-bind-wechat">
                    <div class="qrcode-sheet">
                        <div class="qrcode-wrap loading">
                            <p class="indicator">正在加载二维码</p>
                            <img class="qrcode" alt="微信扫码，完成账号绑定" title="微信扫码，完成账号绑定"/>
                        </div>
                        <p>微信扫码，完成账号绑定</p>
                    </div>

                    <div class="success-sheet">
                        <div class="success-info">
                            <h3 class="single-line">绑定成功</h3>
                        </div>
                        <p class="exit">
                            现在你可以使用微信扫码登录和接收通知了。
                        </p>
                        <p class="desc">
                            你已成功关注 Tower 微信服务号<br>
                            为了更好的服务，请勿随意取关 :)
                        </p>
                    </div>

                    <div class="rebind-wechat-sheet">
                        <div class="error-info">
                            <span class='icon-warning'></span>
                            <h3 class="single-line">微信号已被绑定</h3>
                        </div>
                        <p class="error-desc">
                            该微信号已与 Tower 账号「ifourxxxxx@gmail.com」 绑定，是否解绑并重新绑定到当前账号？
                        </p>
                        <div class="action-rebind">
                            <form class="form-action-rebind" method="post" action="/sns_binds/rebind_wechat"
                                  data-remote="true"><input class="btn btn-primary btn-action-rebind" type="submit"
                                                            value="解绑「ifourxxxxx@gmail.com」，并重新绑定到当前账号"/><input
                                    type="hidden" name="authenticity_token"
                                    value="L5SelLqeRi5C+HqzYXZzmJ7jptKhgktyei/kgnaZmOdSrqSjT+5kG5hxTfPTR/dlCg0Lz4KX5wPOVxoLyCSTxg=="/>
                            </form>
                        </div>
                        <div class="action-dismiss">
                            <button type="button" class="btn btn-x btn-cancel btn-action-dismiss">取消本次绑定操作</button>
                        </div>

                        <div class="disclamer">
                            <small>解绑后，你将不能使用微信扫码登录之前账号，也不会收到之前账号的通知提醒。</small>
                        </div>
                        <div>
                </script>

                <script type="text/html" id="tpl-bind-dingtalk">
                    <div id="dingtalkQRCode" class="qrcode-sheet"></div>

                    <div class="success-sheet">
                        <div class="success-info">
                            <h3 class="single-line">绑定成功</h3>
                        </div>
                        <p class="exit">
                            现在你可以使用微信扫码登录和接收通知了。
                        </p>
                    </div>
                </script>

                <script type="text/html" id="tpl-two-factor-auth">
                    <div class="message-sheet">
                    </div>
                </script>

                <input type="hidden" value="false" id="tpl-two-factor-auth-has-messages"/>
            </div>
        </div>
    </div>
    <div class="footer">
        &copy; 彩程设计
    </div>


</div>

<input type="hidden" id="d18n-enabled" value="false">
<input type="hidden" id="server-time" value="2018-05-21 15:40:09">

<input type="hidden" id="team-guid" value="7feef4ba8611443ebd06db497618beb4">
<input type="hidden" id="team-name" value="alikes">
<input type="hidden" id="team-enable-pusher" value="true">

<input type="hidden" id="user-id" value="7432036">
<input type="hidden" id="user-email" value="2449832339@qq.com">

<input type="hidden" id="unused-bubbles" value="8,12,13">
<input type="hidden" id="member-id" value="12535468">
<input type="hidden" id="member-guid" value="231e0ddd353440c883f9874a555f8adc">
<input type="hidden" id="member-nickname" value="浮点农国">
<input type="hidden" id="member-avatar" value="/assets/default_avatars/noon.jpg">
<input type="hidden" id="member-timezone" value="Asia/Shanghai">
<input type="hidden" id="conn-guid" value="d8020e20-fb6e-48ee-b3f2-cf505afc4356">

<input type="hidden" id="member-owner">

<input type="hidden" id="member-admin">

<input type="hidden" id="electron" value="false">

<script>
    //<![CDATA[
    window.gon = {};
    gon.oss_direct_upload = true;
    //]]>
</script>

<a id="back-to-top" href="javascript:;">
    <i class="twr twr-chevron-up"></i>
</a>
<a id="link-to-help" data-intercom="false" target="_blank" href="/help">
    <span class="twr twr-help"></span>
</a>
<script id="IntercomSettingsScriptTag">window.intercomSettings = {
    "hide_default_launcher": true,
    "guid": "231e0ddd353440c883f9874a555f8adc",
    "name": "浮点农国",
    "email": "2449832339@qq.com",
    "user_id": 12535468,
    "desktop_notification_enabled": false,
    "wechat_notification_enabled": true,
    "email_notification_enabled": false,
    "ai_notify_enabled": false,
    "role": 2,
    "user_guid": "f7eba6660ed54cec965e9058ee595fc5",
    "avatar": "https://tower.im/assets/default_avatars/noon.jpg",
    "comment": null,
    "has_wechat": false,
    "wechat": null,
    "has_dingtalk": false,
    "dingtalk": "浮点农国",
    "two_factor_auth": false,
    "teams": 2,
    "projects": 1,
    "starred_projects": 0,
    "calendars": 1,
    "open_todos": 0,
    "closed_todos": 0,
    "messages_created": 0,
    "uploads_created": 0,
    "attachments_uploaded": 0,
    "comments_created": 0,
    "resources_starred": 0,
    "weekly_reports_created": 0,
    "events_involved": 0,
    "unread_notifications": 0,
    "email_received": 0,
    "data_updated_at": "2018-05-21T07:33:30.051Z",
    "user_hash": "6d6adb4779074ee3e10ca63e8077d4b0d488851a273f1977a3e5667d93729d00",
    "app_id": "xbtsuf77",
    "company": {
        "id": 701306,
        "name": "alikes",
        "created_at": "2018-05-17T03:17:32.000Z",
        "guid": "7feef4ba8611443ebd06db497618beb4",
        "next_charge_date": null,
        "plan": "pro_trial",
        "ever_paid": false,
        "total_paid": 0,
        "alipay_used": 0,
        "haopay_used": 0,
        "owner_guid": "231e0ddd353440c883f9874a555f8adc",
        "has_dingtalk": false,
        "has_yiqixie": false,
        "has_api": false,
        "members": 1,
        "subgroups": 0,
        "active_projects": 1,
        "archived_projects": 0,
        "project_groups": 0,
        "project_templates": 0,
        "calendars": 1,
        "calendar_events": 7,
        "messages": 3,
        "comments": 1,
        "open_todos": 8,
        "closed_todos": 3,
        "documents": 2,
        "files": 2,
        "file_bytesize": 0.0,
        "answers": 0,
        "is_upgraded_to_plus": false
    }
};
(function () {
    var w = window;
    var ic = w.Intercom;
    if (typeof ic === "function") {
        ic('reattach_activator');
        ic('update', intercomSettings);
    } else {
        var d = document;
        var i = function () {
            i.c(arguments)
        };
        i.q = [];
        i.c = function (args) {
            i.q.push(args)
        };
        w.Intercom = i;

        function l() {
            var s = d.createElement('script');
            s.type = 'text/javascript';
            s.async = true;
            s.src = 'https://widget.intercom.io/widget/xbtsuf77';
            var x = d.getElementsByTagName('script')[0];
            x.parentNode.insertBefore(s, x);
        }

        if (w.attachEvent) {
            w.attachEvent('onload', l);
        } else {
            w.addEventListener('load', l, false);
        }
    }
    ;
})()</script>

<script type="text/javascript">
    (function () {
        setTimeout(function () {
            if (!document.querySelector('iframe#intercom-frame')) {
                var w = window;
                var ic = w.Intercom;
                if (ic.toString().length < 100) {
                    var d = document;
                    var i = function () {
                        i.c(arguments)
                    };
                    i.q = [];
                    i.c = function (args) {
                        i.q.push(args)
                    };
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
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-100449807-1', 'auto', {userId: '12535468'});
    ga('create', 'UA-100449807-2', 'auto', 'teamTracker', {userId: '701306'});

    ga('send', 'pageview', {
        'userId': '12535468',
        'dimension1': '701306 : alikes',
        'dimension2': '7432036',
        'dimension3': 'pro_trial'
    });
    ga('teamTracker.send', 'pageview', {
        'userId': '701306',
        'dimension1': 'alikes',
        'dimension2': 10,
        'dimension3': 'pro_trial'
    });

    ga('set', 'dimension4', 'false');
</script>


</body>
</html>

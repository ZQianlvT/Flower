<%--
  Created by IntelliJ IDEA.
  User: 徐哲哲
  Date: 2018/5/21
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <script type="text/javascript">window.NREUM || (NREUM = {});
    NREUM.info = {
        "beacon": "bam.nr-data.net",
        "errorBeacon": "bam.nr-data.net",
        "licenseKey": "e644b8e723",
        "applicationID": "17322787",
        "transactionName": "el8PEkJZWg4BR04WQlZaBAVERRkRDFoW",
        "queueTime": 0,
        "applicationTime": 435,
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
        "transactionName": "el8PEkJZWg4BR04WQlZaBAVERRkRDFoW",
        "queueTime": 0,
        "applicationTime": 435,
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

    <title>Flower - Tower</title>
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
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>


    <meta name="csrf-param" content="authenticity_token"/>
    <meta name="csrf-token"
          content="RKF+MMxvSx7cIxoCj0AHgGn6mh0aD8JgntIqc8RQ6WRrnn9mCPcvqQM7vxPF9+PRa1XDdTxSoZmHeJ6R0ELJEQ=="/>
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
                    <a href="${pageContext.request.contextPath}/project/listProject">项目</a>
                </li>
                <li class="dividing"></li>
                <li class="" id="nav-calendar">
                    <a href="${pageContext.request.contextPath}/base/goURL/calendar/calendar">日历</a>
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
                            <img class="avatar" src="${pageContext.request.contextPath}/images/noon.jpg" alt="Noon"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script id="tpl-member-menu" type="text/html">
        <ul class="menu">
            <li><a href="${pageContext.request.contextPath}/user/findUser">个人设置</a>
            </li>
            <li class="part-line"></li>
            <li><a rel="nofollow" data-method="DELETE" href="${pageContext.request.contextPath}/user/exit">退出</a></li>
        </ul>
    </script>


    <div class="container workspace container-kanban" data-stack-fluid>
        <div class="page">

            <div class="page-inner
        project-kanban"
                 data-guest-unlockable
                 data-stack-fluid
                 data-since="2018-05-21 07:26:44 UTC"
                 data-project-creator="f7e254d7f54e40dbb93a33b737752fbc"
                 data-page-name="Flower"
                 id="page-project">
                <div class="project-header">
                    <div class="project-hd-info">
                        <span class="project-name">Flower</span>
                        <span class="project-desc" data-tooltip="开发一个拥有Tower核心功能的Web应用" data-position="right">
        <i class="twr twr-info-circle"></i>
      </span>
                    </div>

                    <div class="project-links">
                        <a href="${pageContext.request.contextPath}/base/goURL/project/projectMembers"
                           class="link-admin-members">
                            <span class="main">2</span>
                            <span>成员</span>
                        </a>
                        <a href="${pageContext.request.contextPath}/base/goURL/project/setProject"
                           class="link-admin-settings">
                              <span class="main">
                                <i class="twr twr-cog"></i>
                              </span>
                            <span>设置</span>
                        </a>
                    </div>
                </div>

                <div class="project-tabs">
                    <a class="project-tab active">任务</a>
                    <a href="${pageContext.request.contextPath}/discussion/continueDiscussion?pId=${requestScope.project.id}"
                       class="project-tab">讨论</a>
                    <a href="${pageContext.request.contextPath}/schedule/listSchedule?pId=${requestScope.project.id}"
                       class="project-tab">日程</a>
                </div>

                <div id='fullscreen-header'>Flower</div>
                <div class="section section-todos" id="todolists">
                    <h3 class="title-with-btns">
                        <a class="title" href="/projects/e26956389763492f891259d7d9c5b94d/todos" data-stack>任务</a>

                        <div class="btn-group">
                            <a href="javascript:;" class="btn btn-mini btn-new-todo btn-default-todolist"
                               data-request-members="e26956389763492f891259d7d9c5b94d"
                               data-url="">添加任务</a>

                            <button class="btn btn-mini btn-dropdown-toggle">
                                <i class="twr twr-caret-down"></i>
                            </button>

                            <ul class="btn-dropdown-menu icon-menu">
                                <li>
                                    <a href="javascript:;" class="btn-new-todo btn-default-todolist"
                                       data-request-members="e26956389763492f891259d7d9c5b94d"
                                       data-url="">
                                        <i class="twr twr-check-square-o"></i>
                                        添加任务
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;" class="btn-new-todolist">
                                        <i class="twr twr-tasks"></i>
                                        添加清单
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </h3>

                    <div class="todolist-toolbar">
                        <div class="toolbar-wrap filters-wrap">
                            <div class="toolbar-confirm filters-confirm">

                                <div class="filters">
                                    <h5>任务筛选</h5>
                                    <select id="filter-assignee">
                                        <option value="0">所有成员</option>
                                        <option disabled>-----</option>
                                        <option value="ce2b30066f034bf9a69113963da165fd">浮点农国</option>
                                        <option value="f7e254d7f54e40dbb93a33b737752fbc">OrionPax</option>
                                        <option disabled>-----</option>
                                        <option value="-1">未分派</option>
                                    </select>
                                    <select id="filter-due">
                                        <option value="-1">所有时间</option>
                                        <option disabled>-----</option>
                                        <option value="0">今天</option>
                                        <option value="1">明天</option>
                                        <option value="2">本周</option>
                                        <option value="3">下周</option>
                                        <option value="5">以后</option>
                                        <option disabled>-----</option>
                                        <option value="4">已延误</option>
                                        <option value="6">没有截止时间</option>
                                    </select>
                                    <span class="filter-desc">
		<strong>&larr;</strong>筛选结果已用<em> 荧光笔 </em>标记
	</span>
                                </div>


                            </div>
                        </div>

                        <a href="javascript:;" class="link-show-confirm link-filter">
                            <i class="twr twr-markpen"></i>
                        </a>

                        <a href="javascript:;" class="link-fullscreen link-menu">
                            <i class="twr twr-fullscreen-toggle"></i>
                        </a>
                        <div class="toolbar-wrap menus-wrap">
                            <div class="toolbar-confirm menus-confirm">
                                <ul>
                                    <li>
                                        <label>
                                            <input id="toggle-completed-todos" type="checkbox"
                                                   data-url="/projects/e26956389763492f891259d7d9c5b94d/show_completed">
                                            隐藏已完成任务
                                        </label>
                                    </li>
                                    <hr>
                                    <li>
                                        <a data-stack="true" href="/projects/e26956389763492f891259d7d9c5b94d/todos">查看成员视图</a>
                                    </li>
                                    <li>
                                        <a class="link-project-completed-todos" data-stack="true"
                                           href="/projects/e26956389763492f891259d7d9c5b94d/todos/completed">所有已完成任务</a>
                                    </li>
                                    <li>
                                        <a href="/projects/e26956389763492f891259d7d9c5b94d/trash" data-stack="true"
                                           data-visible-to="member">
                                            查看回收站
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>

                    <div class="kanban-todos">
                        <div class="todolists-wrap">
                            <div class="todolists">

                                <c:forEach items="${requestScope.project.boardList}" var="board">
                                    <div class="todolist ui-sortable" data-guid="7eea1fdab77c4e6a84ec744bb869c7a6" data-sort="2" data-creator-guid="f7e254d7f54e40dbb93a33b737752fbc" data-project-guid="e26956389763492f891259d7d9c5b94d">

                                        <div class="flex-container">
                                            <div class="title" style="display: block;">
                                                <div class="todolist-actions actions">
                                                    <div class="inr">
                                                        <a href="/projects/e26956389763492f891259d7d9c5b94d/lists/7eea1fdab77c4e6a84ec744bb869c7a6/edit" class="edit simple-loading" data-remote="true" data-loading="true" data-mothod="get" style="">编辑</a>
                                                        <a href="/projects/e26956389763492f891259d7d9c5b94d/lists/7eea1fdab77c4e6a84ec744bb869c7a6/destroy" data-visible-to="admin,creator" class="del" data-confirm="确定要删除这个任务清单吗？" data-remote="true" data-method="post">删除</a>
                                                    </div>
                                                </div>



                                                <a href="javascript:;" class="btn-new-todo" data-url="/projects/e26956389763492f891259d7d9c5b94d/lists/7eea1fdab77c4e6a84ec744bb869c7a6" data-request-members="e26956389763492f891259d7d9c5b94d">
                                                    <i class="twr twr-plus"></i>
                                                </a>
                                                <a href="javascript:;" class="link-kanban-menu">
                                                    <i class="twr twr-bars"></i>
                                                </a>
                                                <div class="kanban-menu-content hide">
                                                    <a href="javascript:;" class="edit">编辑</a>
                                                    <a href="javascript:;" data-visible-to="admin,creator" class="del">删除</a>
                                                </div>
                                                <h4>
    <span class="name-non-linkable">
        <span class="todolist-rest">开发</span>
    </span>
                                                    <span class="name">
            <span class="todolist-todos-count">1</span>
        <a class="todolist-rest" data-stack="true" href="https://tower.im/projects/e26956389763492f891259d7d9c5b94d/lists/7eea1fdab77c4e6a84ec744bb869c7a6/show">开发</a>
    </span>


                                                    <a href="javascript:;" class="fold">
                                                        <i class="twr twr-angle-up"></i>
                                                    </a>
                                                </h4></div>
                                            <div class="todos-container">
                                                <ul class="todos todos-uncompleted">

                                                    <li class="todo" data-guid="79b9b26712604aa09f2bcb61361d3476" data-sort="2048.0" data-sequence-mine="1024.0" data-sort-url="/projects/e26956389763492f891259d7d9c5b94d/todos/79b9b26712604aa09f2bcb61361d3476/reorder" data-project-guid="e26956389763492f891259d7d9c5b94d" data-project-name="Flower" data-creator-guid="f7e254d7f54e40dbb93a33b737752fbc" data-assignee-guid="f7e254d7f54e40dbb93a33b737752fbc" data-updated-at="1527431052" data-check-items-size="0" data-completed-check-items-size="0">

                                                        <div class="todo-actions actions">
                                                            <div class="inr">
                                                                <a class="run" title="标记成正在进行中" data-loading="true" data-remote="true" data-method="post" href="/projects/e26956389763492f891259d7d9c5b94d/todos/79b9b26712604aa09f2bcb61361d3476/running">执行</a>
                                                                <a class="pause" title="暂停" data-loading="true" data-remote="true" data-method="post" href="/projects/e26956389763492f891259d7d9c5b94d/todos/79b9b26712604aa09f2bcb61361d3476/pause">暂停</a>
                                                                <a href="/projects/e26956389763492f891259d7d9c5b94d/todos/79b9b26712604aa09f2bcb61361d3476/edit" class="edit" data-request-members="e26956389763492f891259d7d9c5b94d" title="编辑">编辑</a>

                                                                <a href="/projects/e26956389763492f891259d7d9c5b94d/todos/79b9b26712604aa09f2bcb61361d3476/destroy" data-visible-to="creator,admin" class="del" data-remote="true" data-method="post" data-confirm="确定要删除这条任务吗？" title="删除">删除</a>
                                                            </div>
                                                        </div>

                                                        <div class="todo-wrap">
                                                            <div class="simple-checkbox" style="height: 18px; width: 18px;">
                                                                <div class="checkbox-container" style="border: 1.8px solid;">
                                                                    <div class="checkbox-tick" style="border-right: 2.52px solid; border-bottom: 2.52px solid;">
                                                                    </div>
                                                                </div>
                                                                <input type="checkbox" name="todo-done" class="checkbox-input" style="display: none;"></div>


                                                            <span class="todo-content">
      <span class="raw">可行性分析</span>
      <span class="content-non-linkable">
        <span class="todo-rest">可行性分析</span>
      </span>
      <span class="content-linkable">
        <a class="todo-rest" data-stack="true" href="https://tower.im/projects/e26956389763492f891259d7d9c5b94d/todos/79b9b26712604aa09f2bcb61361d3476">可行性分析</a>
      </span>
    </span>

                                                            <span class="todo-detail">

          <a class="label todo-assign-due" href="javascript:;" data-request-members="e26956389763492f891259d7d9c5b94d">
              <span class="assignee" data-guid="f7e254d7f54e40dbb93a33b737752fbc" data-gavatar="https://avatar.tower.im/b8d097bc5a95408395bf6023807ec958">
                OrionPax
              </span>

          </a>


    </span>

                                                            <a class="label todo-proj" title="Flower - qwe" data-stack="true" href="/projects/e26956389763492f891259d7d9c5b94d/lists/7eea1fdab77c4e6a84ec744bb869c7a6/show">Flower - qwe</a>
                                                        </div>
                                                    </li></ul>

                                                <ul class="todo-new-wrap"></ul>

                                                <ul class="todos todos-completed" data-length="3" data-url="/projects/e26956389763492f891259d7d9c5b94d/lists/7eea1fdab77c4e6a84ec744bb869c7a6/completed">





                                                    <li class="todo completed" data-guid="70d66a5f040f4f6caf6cb4aa172a3d0c" data-sort="2048.0" data-sequence-mine="7168.0" data-sort-url="/projects/e26956389763492f891259d7d9c5b94d/todos/70d66a5f040f4f6caf6cb4aa172a3d0c/reorder" data-project-guid="e26956389763492f891259d7d9c5b94d" data-project-name="Flower" data-creator-guid="f7e254d7f54e40dbb93a33b737752fbc" data-assignee-guid="f7e254d7f54e40dbb93a33b737752fbc" data-updated-at="1527075878" data-check-items-size="0" data-completed-check-items-size="0" data-closed-at="1526610528">

                                                        <div class="todo-actions actions">
                                                            <div class="inr">

                                                                <a href="/projects/e26956389763492f891259d7d9c5b94d/todos/70d66a5f040f4f6caf6cb4aa172a3d0c/destroy" data-visible-to="creator,admin" class="del" data-remote="true" data-method="post" data-confirm="确定要删除这条任务吗？" title="删除">删除</a>
                                                            </div>
                                                        </div>

                                                        <div class="todo-wrap">
                                                            <div class="simple-checkbox checked" style="height: 18px; width: 18px;">
                                                                <div class="checkbox-container" style="border: 1.8px solid;">
                                                                    <div class="checkbox-tick" style="border-right: 2.52px solid; border-bottom: 2.52px solid;">
                                                                    </div>
                                                                </div>
                                                                <input type="checkbox" name="todo-done" checked="" class="checkbox-input" style="display: none;"></div>


                                                            <span class="todo-content">
                                                          <span class="raw">网页流转设计</span>
                                                          <span class="content-non-linkable">
                                                            <span class="todo-rest">网页流转设计</span>
                                                          </span>
                                                          <span class="content-linkable">
                                                            <a class="todo-rest" data-stack="true" href="https://tower.im/projects/e26956389763492f891259d7d9c5b94d/todos/70d66a5f040f4f6caf6cb4aa172a3d0c">网页流转设计</a>
                                                          </span>
                                                        </span>

                                                                                                                <span class="todo-detail">
                                                            <span class="label completed-member">( OrionPax <span class="completed-time" data-readable-time="2018-05-18T10:28:48+08:00">5月18日</span> )</span>
                                                        </span>

                                                            <a class="label todo-proj" title="Flower - qwe" data-stack="true" href="/projects/e26956389763492f891259d7d9c5b94d/lists/7eea1fdab77c4e6a84ec744bb869c7a6/show">Flower - qwe</a>
                                                        </div>
                                                    </li>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <script>

                                </script>


                                <a href="javascript:;" class="link-show-todolist-form">
                                    <i class="twr twr-plus"></i>
                                    <span>添加新清单</span>
                                </a>

                                <div class="todolist-form new ">
                                    <form class="form" method="post"
                                          action="/projects/e26956389763492f891259d7d9c5b94d/lists" data-remote="true">
                                        <input type="text" class="todolist-name no-border"
                                               data-autosave="project-e26956389763492f891259d7d9c5b94d-new-todolist"
                                               name="todolist_name" placeholder="输入清单名称" data-validate="custom"
                                               data-validate-msg=""/>
                                        <textarea class="todolist-desc no-border" name="todolist_desc"
                                                  placeholder="补充说明（可选）"
                                                  data-autosave="project-e26956389763492f891259d7d9c5b94d-new-todolist-desc"></textarea>

                                        <div class="visitor-lock" data-visible-to="member">
                                            <label>
                                                <input type="checkbox" name="invisible_for_visitor"
                                                       class="cb-visitor-lock"
                                                       value="1"/>
                                                对访客隐藏这个任务清单
                                            </label>
                                        </div>
                                        <p class="form-buttons">
                                            <button type="submit" class="btn btn-create-todolist btn-primary"
                                                    data-disable-with="正在创建...">
                                                创建清单
                                            </button>
                                            <button type="button" class="btn btn-x btn-cancel-todolist">取消</button>
                                        </p>
                                    </form>
                                </div>

                            </div>

                        </div>

                        <script type="text/html" id="tpl-kanban-todolist-menu">
                            <a href="javascript:;" class="btn-new-todo" data-url=""
                               data-request-members="e26956389763492f891259d7d9c5b94d">
                                <i class="twr twr-plus"></i>
                            </a>
                            <a href="javascript:;" class="link-kanban-menu">
                                <i class="twr twr-bars"></i>
                            </a>
                            <div class="kanban-menu-content hide">
                                <a href="javascript:;" class="edit">编辑</a>
                                <a href="javascript:;" data-visible-to="admin,creator" class="del">删除</a>
                            </div>
                        </script>


                        <script type="text/html" id="tpl-todo-form">

                            <li class="todo-form">
                                <form class="form form-edit-todo" method="post" data-remote="true">
                                    <div class="form-body">
                                        <input type="checkbox" name="todo-done" disabled/>
                                        <textarea name="todo_content" class="todo-content no-border" placeholder="新的任务"
                                                  data-validate="custom" data-validate-msg=""></textarea>

                                        <div class="todo-toolbar">
                                            <a href="javascript:;" class="add-tag" title="点击添加标签">#</a>
                                            <a href="javascript:;" class="add-priority" title="点击添加优先级">!</a>
                                        </div>

                                        <a href="javascript:;" class="todo-label">
                                            <span class="assignee">未指派</span> ·
                                            <span class="due">没有截止时间</span>
                                        </a>
                                    </div>
                                    <div class="buttons create-buttons">
                                        <button type="submit" class="btn btn-primary btn-create-todo"
                                                data-disable-with="正在保存...">添加任务
                                        </button>
                                        <a href="javascript:;" class="btn-cancel-todo">取消</a>
                                    </div>
                                    <div class="buttons edit-buttons">
                                        <button type="submit" class="btn btn-primary btn-update-todo"
                                                data-disable-with="正在保存...">保存
                                        </button>
                                        <a href="javascript:;" class="btn-cancel-update-todo">取消</a>
                                    </div>

                                    <input type="hidden" name="assignee_guid" class="hidden-assignee" value="-1"/>
                                    <input type="hidden" name="due_at" class="hidden-due-date" value=""/>
                                </form>
                            </li>


                        </script>

                        <script type="text/html" id="tpl-todo-popover">
                            <div class="todo-popover">
                                <div class="select-assignee">
                                    <h3>将任务指派给</h3>
                                    <div class="assignee-wrapper">
                                        <select id="txt-assignee"></select>
                                    </div>
                                </div>

                                <div class="select-due-date">
                                    <h3>任务截止时间</h3>
                                    <div class="due-date-wrapper">
                                        <input type="text" class="txt-due-date" placeholder="选择截止时间"/>
                                        <a href="javascript:;" class="link-remove-due-date" title="取消截止时间"><span
                                                class='twr twr-times'></span></a>

                                        <div class="due-date-picker">
                                            <div class="cal-wrapper">
                                                <div class="cal-shortcuts">
                                                    <a href="javascript:;" class="link-cal-shortcut today">[今天]</a>
                                                    <a href="javascript:;" class="link-cal-shortcut tomorrow">[明天]</a>
                                                    <a href="javascript:;"
                                                       class="link-cal-shortcut this-friday">[本周]</a>
                                                    <a href="javascript:;"
                                                       class="link-cal-shortcut next-friday">[下周]</a>
                                                </div>
                                                <input type="date" class="hidden-due-date"/>
                                            </div>
                                            <div class="shortcuts-wrapper">
                                                <a href="javascript:;" class="link-date-shortcut today"
                                                   data-shortcut="today|td|jintian|jt|今天">今天</a>
                                                <a href="javascript:;" class="link-date-shortcut tomorrow"
                                                   data-shortcut="tomorrow|tm|mingtian|mt|明天">明天</a>
                                                <a href="javascript:;" class="link-date-shortcut after-tomorrow"
                                                   data-shortcut="houtian|ht|dat|后天">后天</a>
                                                <a href="javascript:;" class="link-date-shortcut monday"
                                                   data-shortcut="monday|zhouyi|xingqiyi|zy|xqy|周一|星期一|1">周一</a>
                                                <a href="javascript:;" class="link-date-shortcut tuesday"
                                                   data-shortcut="tuesday|zhouer|xingqier|ze|xqe|周二|星期二|2">周二</a>
                                                <a href="javascript:;" class="link-date-shortcut wednesday"
                                                   data-shortcut="wednesday|zhousan|xingqisan|zs|xqs|周三|星期三|3">周三</a>
                                                <a href="javascript:;" class="link-date-shortcut thursday"
                                                   data-shortcut="thursday|zhousi|xingqisi|zs|xqs|周四|星期四|4">周四</a>
                                                <a href="javascript:;" class="link-date-shortcut friday"
                                                   data-shortcut="friday|zhouwu|xingqiwu|zw|xqw|周五|星期五|5">周五</a>
                                                <a href="javascript:;" class="link-date-shortcut saturday"
                                                   data-shortcut="saturday|zhouliu|xingqiliu|zl|xql|周六|星期日|6">周六</a>
                                                <a href="javascript:;" class="link-date-shortcut sunday"
                                                   data-shortcut="sunday|zhouri|xingqiri|zr|xqr|周日|星期日|7">周日</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </script>
                    </div>


                </div>


            </div>
        </div>
        <div class="footer">
            &copy; 彩程设计
        </div>

    </div>
    </div>

    <input type="hidden" id="d18n-enabled" value="false">
    <input type="hidden" id="server-time" value="2018-05-21 21:05:14">

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
    <input type="hidden" id="conn-guid" value="175ea352-867e-4958-8747-fc671201e314">


    <input type="hidden" id="electron" value="false">

    <script>
        //<![CDATA[
        window.gon = {};
        gon.oss_direct_upload = true;
        //]]>
    </script>

    <script id="IntercomSettingsScriptTag">window.intercomSettings = {
        "hide_default_launcher": true,
        "guid": "ce2b30066f034bf9a69113963da165fd",
        "name": "浮点农国",
        "email": "2449832339@qq.com",
        "user_id": 12535517,
        "desktop_notification_enabled": false,
        "wechat_notification_enabled": true,
        "email_notification_enabled": false,
        "ai_notify_enabled": false,
        "role": 0,
        "user_guid": "f7eba6660ed54cec965e9058ee595fc5",
        "avatar": "https://tower.im/assets/default_avatars/noon.jpg",
        "comment": null,
        "has_wechat": false,
        "wechat": null,
        "has_dingtalk": false,
        "dingtalk": "浮点农国",
        "two_factor_auth": false,
        "teams": 2,
        "projects": 2,
        "starred_projects": 0,
        "calendars": 0,
        "open_todos": 0,
        "closed_todos": 0,
        "messages_created": 0,
        "uploads_created": 0,
        "attachments_uploaded": 0,
        "comments_created": 0,
        "resources_starred": 0,
        "weekly_reports_created": 0,
        "events_involved": 2,
        "unread_notifications": 29,
        "email_received": 0,
        "data_updated_at": "2018-05-21T06:53:20.499Z",
        "user_hash": "99bb70a8e9ae5b39924f6bc16c6a8f29e44b0b2227bd29c578f9873989e91402",
        "app_id": "xbtsuf77",
        "company": {
            "id": 701217,
            "name": "HYLT",
            "created_at": "2018-05-17T01:24:47.000Z",
            "guid": "982b79584a39484eb9e17459a6e1deff",
            "next_charge_date": null,
            "plan": "pro_trial",
            "ever_paid": false,
            "total_paid": 0,
            "alipay_used": 0,
            "haopay_used": 0,
            "owner_guid": "f7e254d7f54e40dbb93a33b737752fbc",
            "has_dingtalk": false,
            "has_yiqixie": false,
            "has_api": false,
            "members": 2,
            "subgroups": 0,
            "active_projects": 2,
            "archived_projects": 0,
            "project_groups": 0,
            "project_templates": 0,
            "calendars": 0,
            "calendar_events": 2,
            "messages": 2,
            "comments": 3,
            "open_todos": 2,
            "closed_todos": 6,
            "documents": 0,
            "files": 0,
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

        ga('create', 'UA-100449807-1', 'auto', {userId: '12535517'});
        ga('create', 'UA-100449807-2', 'auto', 'teamTracker', {userId: '701217'});

        ga('send', 'pageview', {
            'userId': '12535517',
            'dimension1': '701217 : HYLT',
            'dimension2': '7432036',
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


</body>
<script>
    $(function () {
        $("a.link-more-completed").css("display","none");
    })
</script>
</html>
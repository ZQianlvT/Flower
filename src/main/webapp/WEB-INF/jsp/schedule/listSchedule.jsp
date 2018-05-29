<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 徐哲哲
  Date: 2018/5/21
  Time: 22:19
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
        "transactionName": "el8PEkJZWg4BR04WQlZaBAVERRkBBVkECFRYQj4DRlNYFhc=",
        "queueTime": 0,
        "applicationTime": 242,
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
        "transactionName": "el8PEkJZWg4BR04WQlZaBAVERRkBBVkECFRYQj4DRlNYFhc=",
        "queueTime": 0,
        "applicationTime": 242,
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

    <title>所有的日程 - Flower</title>
    <meta name="renderer" content="webkit">
    <meta name="baidu-site-verification" content="qLDoHdGnb64RHlkm">
    <meta name="alexaVerifyID" content="SIgQikd9LazsFz9M1vPBaQyC4Gw">

    <link rel="dns-prefetch" href="//avatar.tower.im">
    <link rel="dns-prefetch" href="//atttachments.tower.im">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" type="image/x-icon">
    <link rel="icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" sizes="32x32">
    <link rel="icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" sizes="64x64">
    <link rel="icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" sizes="128x128">
    <link rel="apple-touch-icon-precomposed"
          href="${pageContext.request.contextPath}/images/icon@512-c7c654c8348a4af697bb86f952f57923247c48b88fbbed1a472839eb800d2000.png">

    <link rel="stylesheet" media="all"
          href="${pageContext.request.contextPath}/css/application-b82ad007940d21bea7a8c87658d6aa956d8b0aeb0ec12ff0c8282dbb97ee1085.css"/>
    <script src="${pageContext.request.contextPath}/js/application-6079413f7ac9d58f25bf968fe88bbd90bc60f812c817db4644fb1d2543bce6d0.js"></script>


    <meta name="csrf-param" content="authenticity_token"/>
    <meta name="csrf-token"
          content="FVg0ql2vCv2rB7VenKvG3nQldY05OEEwkQfrrLqNwfo6ZzX8mTduSnQfEE/WHCKPdoos5R9lIsmIrV9Orp/hjw=="/>
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


    <div class="container workspace">
        <div class="page "
             data-url="/projects/e26956389763492f891259d7d9c5b94d">
            <a href="${pageContext.request.contextPath}/project/listBoard" class="link-page-behind">Flower</a>
        </div>
        <div class="page">


            <div class="page-inner" data-since="2018-05-21 14:17:54 UTC"

                 data-page-name="所有的日程" id="page-project-calendar-events">

                <h3 class="page-title">所有的日程</h3>

                <div class="calendar-events-topbar">
                    <a class="btn btn-mini btn-new-calendar-event"
                       href="${pageContext.request.contextPath}/schedule/createSchedule?id=${requestScope.pId}">创建日程</a>
                    <h4 class="date" data-date="<fmt:formatDate value='${sessionScope.currTimeStr}' pattern='yyyy-MM' />"></h4>

                    <div class="nav-buttons">
                        <a href="${pageContext.request.contextPath}/schedule/listSchedule?pId=${requestScope.pId}&month=left" class="" title="上个月">
                            <i class="twr twr-angle-left"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/schedule/listSchedule?pId=${requestScope.pId}&month=right" class="" title="下个月">
                            <i class="twr twr-angle-right"></i>
                        </a>
                    </div>
                </div>

                <div class="calendar-events">

                    <c:forEach items="${requestScope.scheduleList}" var="schedule">
                    <div class="calendar-event">

                        <div class="date">
                            <span class="start-time" data-time="${schedule.startTime}"
                                  title="<fmt:formatDate value='${schedule.startTime}' pattern='yyyy-MM-dd'/>">
                                <fmt:formatDate value="${schedule.startTime}" pattern="yyyy-MM-dd" />
                            </span>

                                <span class="end-time" data-time="${schedule.endTime}"
                                      title="<fmt:formatDate value='${schedule.endTime}' pattern='yyyy-MM-dd'/>">
                                - <fmt:formatDate value="${schedule.endTime}" pattern="yyyy-MM-dd" />
                            </span>
                        </div>

                        <div class="event">
                            <p class="event-detail">
                            <span class="event-content">
                                <div class="calendar_event-rest">${schedule.name}</div>
                            </span>
                            </p>
                            <%--<div class="calendar">--%>
                                <%--<span class="name">日历：<span class="cal-color-11">Flower</span></span>--%>
                            <%--</div>--%>
                            <p class="member-list">参与人：
                                <c:forEach items="${schedule.userList}" var="user">
                                    ${user.name}&nbsp&nbsp&nbsp
                                </c:forEach></p>
                        </div>
                    </div>
                    </c:forEach>


            </div>

        </div>
    </div>

    <div class="footer">
        &copy; 晴天设计
    </div>


</div>

<input type="hidden" id="d18n-enabled" value="false">
<input type="hidden" id="server-time" value="2018-05-21 22:17:54">

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
<input type="hidden" id="conn-guid" value="4a2a15cd-b859-42d6-9530-7e8b56c9e463">


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
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>All Jobs | Azore Job Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B/GM4XqrwHnWXNOWMbloTmrYXZg10cakYGmpfsR/bbzQ6JAJI4ihuyADKLnBgrCe" crossorigin="anonymous">
</head>
<body class="d-flex flex-column min-vh-100 bg-2">
<%@ include file="header.jsp" %>
<main class="flex-grow-1 py-9">
    <div class="container lg:col-10 xl:col-9">
        <div class="d-flex flex-column md:flex-row justify-content-between align-items-start gap-5 mb-7">
            <div><h1>Explore opportunities</h1><p class="fg-2">Find a role that puts your skills to work.</p></div>
            <a class="btn btn-solid theme-warning" href="${pageContext.request.contextPath}/addjob">Post a job <span aria-hidden="true">+</span></a>
        </div>
        <p class="fg-2"><c:out value="${fn:length(jobPosts)}" /> jobs available</p>
        <div class="d-grid gap-6">
            <c:forEach var="job" items="${jobPosts}" varStatus="status">
                <article class="card bg-body shadow-sm p-7" aria-labelledby="job-title-${status.index}">
                    <div class="d-flex align-items-start gap-5 mb-5">
                        <div class="badge theme-warning p-4" aria-hidden="true">JOB</div>
                        <div>
                            <h2 class="h4" id="job-title-${status.index}"><c:out value="${job.postProfile}" /></h2>
                            <p class="fg-2 text-sm mb-0">Required experience: <c:out value="${job.reqExperience}" /> years</p>
                        </div>
                    </div>
                    <p class="fg-2 text-break" ><c:out value="${job.postDesc}" /></p>
                    <div class="d-flex justify-content-between flex-wrap gap-4 align-items-center">
                        <div class="d-flex flex-wrap gap-3" aria-label="Tech stack">
                            <c:forEach var="technology" items="${job.postTechStack}">
                                <span class="badge badge-subtle theme-primary text-sm"><c:out value="${technology}" /></span>
                            </c:forEach>
                        </div>
                        <span class="fg-2 text-sm">Post ID: <c:out value="${job.postId}" /></span>
                    </div>
                </article>
            </c:forEach>
            <c:if test="${empty jobPosts}">
                <div class="card bg-body shadow-sm p-7 text-center">
                    <h2>No jobs yet</h2>
                    <p class="fg-2 mb-0">Post a job to add the first opportunity.</p>
                </div>
            </c:if>
        </div>
    </div>
</main>
<%@ include file="footer.jsp" %>
<script type="module" src="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-1a/pXj49ZQ1aHEmrJ+gMw1otqoVsYwlEnlD8mIfY2TV03r20Y0CN7uqx1tQogjPL" crossorigin="anonymous"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Posted | Azore Job Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B/GM4XqrwHnWXNOWMbloTmrYXZg10cakYGmpfsR/bbzQ6JAJI4ihuyADKLnBgrCe" crossorigin="anonymous">
</head>
<body class="d-flex flex-column min-vh-100 bg-2">
<%@ include file="header.jsp" %>
<main class="flex-grow-1 py-9">
    <div class="container">
      <div class="row justify-content-center">
        <section class="col-12 md:col-9 lg:col-7 xl:col-6" aria-labelledby="success-heading">
          <div class="card bg-body shadow-sm p-7 md:p-9 text-center">
            <div class="text-5xl fg-success lh-1 mb-6" aria-hidden="true">&#10003;</div>
            <p class="text-sm text-uppercase fw-semibold fg-success mb-3">Job posted successfully</p>
            <h1 class="h2 mb-4" id="success-heading">Your job has been added.</h1>
            <p class="fg-2 mb-7">Your opportunity is now available on the jobs page.</p>
            <div class="bg-2 border rounded p-6 d-flex flex-column align-items-center gap-2">
                <p class="text-sm fg-2 mb-0">Posted opportunity</p>
                <h2 class="h4 text-break mb-0"><c:out value="${postedJob.postProfile}" /></h2>
                <p class="fg-2 text-sm mb-0">Post ID: <c:out value="${postedJob.postId}" /></p>
                <span class="badge badge-subtle theme-success mt-2">Available in All jobs</span>
            </div>
            <div class="d-grid sm:d-flex justify-content-center gap-4 mt-7">
                <a class="btn btn-solid theme-warning" href="${pageContext.request.contextPath}/viewalljobs">View all jobs <span aria-hidden="true">&rarr;</span></a>
                <a class="btn btn-outline theme-secondary" href="${pageContext.request.contextPath}/addjob">Post another job</a>
            </div>
            <p class="text-center mt-6 mb-0"><a class="fg-2 text-sm text-decoration-none" href="${pageContext.request.contextPath}/home">&larr; Back to home</a></p>
            <p class="text-sm fg-2 border-top pt-5 mt-7 mb-0">Jobs are stored in memory and reset when the application restarts.</p>
          </div>
        </section>
      </div>
    </div>
</main>
<%@ include file="footer.jsp" %>
<script type="module" src="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-1a/pXj49ZQ1aHEmrJ+gMw1otqoVsYwlEnlD8mIfY2TV03r20Y0CN7uqx1tQogjPL" crossorigin="anonymous"></script>
</body>
</html>
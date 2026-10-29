<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home | Telusko Job Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B/GM4XqrwHnWXNOWMbloTmrYXZg10cakYGmpfsR/bbzQ6JAJI4ihuyADKLnBgrCe" crossorigin="anonymous">
</head>
<body class="d-flex flex-column min-vh-100 bg-2">
<%@ include file="header.jsp" %>
<main class="flex-grow-1 py-9">
    <div class="container lg:col-10 xl:col-9">
        <section class="text-center py-9" aria-labelledby="home-heading">

            <h1 id="home-heading">Great talent. <span class="bg-warning">Great opportunities.</span></h1>
            <p class="fg-2">Whether you&rsquo;re looking for your next role or your next team member, you&rsquo;re in the right place.</p>
        </section>
        <div class="row g-7">
            <section class="col-12 md:col-6" aria-labelledby="find-heading"><div class="card bg-body shadow-sm h-100 p-7">
                <div class="text-3xl fg-warning mb-5" aria-hidden="true">&#9906;</div>
                <p class="text-sm text-uppercase fw-semibold fg-2 mb-3">For job seekers</p>
                <h2 class="h3" id="find-heading">Find your next opportunity</h2>
                <p>Explore job openings, discover the skills teams are looking for, and take the next step in your career.</p>
                <a class="btn btn-solid theme-warning" href="${pageContext.request.contextPath}/viewalljobs">View all jobs <span aria-hidden="true">&rarr;</span></a>
            </div></section>
            <section class="col-12 md:col-6" aria-labelledby="hire-heading"><div class="card bg-body shadow-sm h-100 p-7">
                <div class="text-3xl fg-primary mb-5" aria-hidden="true">+</div>
                <p class="text-sm text-uppercase fw-semibold fg-2 mb-3">For employers</p>
                <h2 class="h3" id="hire-heading">Build your dream team</h2>
                <p>Share your open role, outline the experience you need, and help the right people find their way to you.</p>
                <a class="btn btn-solid theme-inverse" href="${pageContext.request.contextPath}/addjob">Post a job <span aria-hidden="true">&rarr;</span></a>
            </div></section>
        </div>
    </div>
</main>
<%@ include file="footer.jsp" %>
<script type="module" src="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-1a/pXj49ZQ1aHEmrJ+gMw1otqoVsYwlEnlD8mIfY2TV03r20Y0CN7uqx1tQogjPL" crossorigin="anonymous"></script>
</body>
</html>
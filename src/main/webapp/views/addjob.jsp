<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Post a new Job | Job Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B/GM4XqrwHnWXNOWMbloTmrYXZg10cakYGmpfsR/bbzQ6JAJI4ihuyADKLnBgrCe" crossorigin="anonymous">
</head>
<body class="d-flex flex-column min-vh-100 bg-2">
<%@ include file="header.jsp" %>
<main class="flex-grow-1 py-9">
    <div class="container lg:col-10 xl:col-9">
        <form class="card bg-body shadow-sm p-7 border-primary col-12 md:col-8 lg:col-6 mx-auto" action="${pageContext.request.contextPath}/handleform" method="post" accept-charset="UTF-8" aria-labelledby="job-form-heading">
            <h1 class="h3 text-center mb-6" id="job-form-heading">Post a new Job</h1>
            <div class="mb-2">
                <label class="form-label" for="postId">Post ID</label>
                <input class="form-control" type="number" id="postId" name="postId" min="1" step="1" required>
            </div>
            <div class="mb-2">
                <label class="form-label" for="postProfile">Post Profile</label>
                <input class="form-control" type="text" id="postProfile" name="postProfile" maxlength="120" required>
            </div>
            <div class="mb-2">
                <label class="form-label" for="postDesc">Post Description</label>
                <textarea class="form-control" id="postDesc" name="postDesc" rows="2" maxlength="3000" required></textarea>
            </div>
            <div class="mb-2">
                <label class="form-label" for="reqExperience">Required Experience</label>
                <input class="form-control" type="number" id="reqExperience" name="reqExperience" min="0" step="1" required>
            </div>
            <div class="mb-3">
                <label class="form-label" for="postTechStack">Tech Stack</label>
                <select class="form-control" id="postTechStack" name="postTechStack" multiple size="6" aria-describedby="tech-stack-help" required>
                    <option value="Java">Java</option>
                    <option value="JavaScript">JavaScript</option>
                    <option value="Swift">Swift</option>
                    <option value="TypeScript">TypeScript</option>
                    <option value="Python">Python</option>
                    <option value="Spring Boot">Spring Boot</option>
                    <option value="SQL">SQL</option>
                    <option value="Git">Git</option>
                </select>
                <p class="form-text" id="tech-stack-help">Hold Ctrl (Windows) or Command (Mac) to select multiple technologies.</p>
            </div>
            <button class="btn btn-solid theme-primary" type="submit">Submit</button>
            <p class="form-text mt-2 mb-0">Jobs are stored in memory and will reset when the application restarts.</p>
        </form>
    </div>
</main>
<%@ include file="footer.jsp" %>
<script type="module" src="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-1a/pXj49ZQ1aHEmrJ+gMw1otqoVsYwlEnlD8mIfY2TV03r20Y0CN7uqx1tQogjPL" crossorigin="anonymous"></script>
</body>
</html>
<%@include file="../shared/header.jsp" %>
<div class="page-header">
    <h3>Available Courses</h3>
</div>
<%@include file="../shared/nav.jsp" %>
<table class="table table-striped table-bordered">
    <thead>
        <tr>
            <th scope="col" class="text-center">Id</th>
            <th scope="col" class="text-center">Name</th>
            <th scope="col" class="text-center">Code</th>
            <th scope="col" class="text-center">Fees</th>
            <th scope="col" class="text-center">Added Date</th>
            <th scope="col" class="text-center">Modified Date</th>
            <th scope="col" class="text-center">Status</th>
            <th scope="col" class="text-center" colspan="2">Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="c" items="${courses}">
            <tr>
                <th scope="row" class="text-center">${c.id}</th>
                <td>${c.name}</td>
                <td class="text-center">${c.code}</td>
                <td class="text-center">${c.fees}</td>
                <td class="text-center">${c.addedDate}</td>
                <td class="text-center">${c.modifiedDate}</td>
                <td class="text-center">
                    <c:choose>
                        <c:when test="${not c.status}">
                            <span class="glyphicon glyphicon-remove" style="color:red"></span>
                        </c:when>
                        <c:otherwise>
                            <span class="glyphicon glyphicon-ok" style="color:greenyellow"></span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <button type="submit" onclick="location.href = '/admin/courses/update/${c.id}'" name="update" class="btn btn-warning center-block">
                        <span class="glyphicon glyphicon-floppy-save"></span> Edit
                    </button>
                </td>
        <form method="post" action="/admin/courses/delete/${c.id}">
            <td>
                <button type="submit" onclick="return confirm('Are you sure to delete?????')" name="delete" class="btn btn-danger center-block">
                    <span class="glyphicon glyphicon-trash"></span> Delete
                </button>
            </td>
        </form>
    </tr>
</c:forEach>
</tbody>
</table>
<%@include file="../shared/footer.jsp" %>
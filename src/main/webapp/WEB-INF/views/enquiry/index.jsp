<%@include file="../shared/header.jsp" %>
<div class="page-header">
    <h3>Enquiries</h3>
</div>
<%@include file="../shared/nav.jsp" %>
<table class="table table-striped table-bordered">
    <thead>
        <tr>
            <th scope="col" class="text-center">Id</th>
            <th scope="col" class="text-center">Name</th>
            <th scope="col" class="text-center">Email</th>
            <th scope="col" class="text-center">Contact No.</th>
            <th scope="col" class="text-center">Added Date</th>
            <th scope="col" class="text-center">Modified Date</th>
            <th scope="col" class="text-center">Status</th>
            <th scope="col" class="text-center">Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="e" items="${enquiries}">
            <tr>
                <th scope="row" class="text-center">${e.id}</th>
                <td>${e.fullName}</td>
                <td class="text-center">${e.email}</td>
                <td class="text-center">${e.contactNo}</td>
                <td class="text-center">${e.addedDate}</td>
                <td class="text-center">${e.modifiedDate}</td>
                <td><span class="label label-warning center-block">${e.status}</span></td>
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

<%@include file="../shared/header.jsp" %>
<div class="page-header">
    <h3>Post an Enquiry</h3>
</div>
<form action="" method="post">

    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <Label>First Name</Label>
                <input type="text" name="firstName" class="form-control" required="required" value="${enquiry.firstName}"/>
            </div>
        </div>
        <div class="col-md-4 col-sm-offset-1">
            <div class="form-group">
                <Label>Last Name</Label>
                <input type="text" name="lastName" class="form-control" required="required"/>
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <Label>Email.</Label>
                <input type="email" name="email" class="form-control" required="required"/>
            </div>
        </div>
            <div class="col-md-4 col-sm-offset-1">
            <div class="form-group">
                <Label>Contact No.</Label>
                <input type="text" name="contactNo" class="form-control" required="required""/>
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <Label>Select Course</Label>
                <select name="course.id" class="form-control">
                    <option>---Select Course---</option>
                    <c:forEach var="c" items="${courses}">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
    </div>
    <button type="submit" name="submit" class="btn btn-success">Send</button>
</form>
<%@include file="../shared/footer.jsp" %>
<%@include file="../shared/header.jsp" %>
<div class="page-header">
    <h3>Add Courses</h3>
</div>
<%@include file="../shared/nav.jsp" %>
<form action="" method="post">
    
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <Label>Name</Label>
                <input type="text" name="name" class="form-control" required="required" value="${courses.name}"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <Label>Code</Label>
                <input type="text" name="code" class="form-control" required="required" value="${courses.code}"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <Label>Fees</Label>
                <input type="number" name="fees" class="form-control" required="required" value="${courses.fees}"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <Label>Status</Label><br>
                <input type="radio" name="status" value="true" required />True &nbsp&nbsp
                <input type="radio" name="status" value="false"/>False 
            </div>
        </div>
    </div>

    <button type="submit" name="submit" class="btn btn-success">Send</button>
</form>
<%@include file="../shared/footer.jsp" %>

<%@include file="../shared/header.jsp" %>   
<div class="page-header">
        <h2>Login</h2>
    </div>
    <c:if test = "${error == true}">
        <div class="alert alert-danger" role="alert">
            Incorrect credentials !!!
        </div>
    </c:if>
    <form method="post" action="/login">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Username</label><br>
                    <input type="text" name="username" required="required"/><br>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Password</label><br>
                    <input type="password" name="password" required="required"/><br>
                </div>
            </div>
        </div>
        <button type="submit" name="submit" class="btn btn-primary">Send</button> 
    </form>
<%@include file="../shared/footer.jsp" %>
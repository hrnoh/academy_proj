<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <!-- Login Modal -->
<div id="loginModal" class="modal fade" role="dialog" style="top: 100;">
	<div class="modal-dialog" style="width: 350px">

		<!-- Modal content-->
		<div class="modal-content">
			<form action="/user/login" method="post" class="form-horizontal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Login</h4>
			</div>
			<div class="modal-body" style="padding-bottom: 0px;">
					<div class="form-group">
						<label class="control-label col-xs-3" for="id">ID :</label>
						<div class="col-xs-8">
							<input class="form-control" name="id" type="text"
								placeholder="Enter ID">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-xs-3" for="pw">PW :</label>
						<div class="col-xs-8">
							<input class="form-control" name="pwd" type="password"
								placeholder="Enter password">
						</div>
					</div>
			</div>
			<div class="modal-footer">
				<div>
					<button type="submit" class="btn btn-primary">login</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			</form>
		</div>

	</div>
</div>
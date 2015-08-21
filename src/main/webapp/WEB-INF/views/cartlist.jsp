<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${empty cartService.getCartByUserLogin(currentUser.getPrincipal().getUsername())}">
	No items in cart.
	</c:when>
	<c:otherwise>
		<c:forEach var="item"
			items="${cartService.getCartByUserLogin(currentUser.getPrincipal().getUsername())}">
			<ul class="cart list-unstyled">
				<li>
					<div class="row">
						<div class="col-sm-7 col-xs-7">
							1 <a href="product_detail">${inventoryService.getInventoryById(item.inventoryId).getInventoryTxt()}</a>
							<span>[ ${inventoryService.getInventoryById(item.inventoryId).getSize()} ]</span>
						</div>
						<div class="col-sm-5 col-xs-5 text-right">
							<strong>$${inventoryService.getInventoryById(item.inventoryId).getPriceUsd()}</strong>
							<a href="#"><i class="fa fa-trash-o"></i></a>
						</div>
					</div>
				</li>
			</ul>
		</c:forEach>
		<ul class="list-unstyled total-price">
			<li>
				<div class="row">
					<div class="col-sm-8 col-xs-8">Tax</div>
					<div class="col-sm-4 col-xs-4 text-right">$${cartService.getCartTaxCostByUserLogin(currentUser.getPrincipal().getUsername())}</div>
				</div>
			</li>
			<li>
				<div class="row">
					<div class="col-sm-8 col-xs-8">Shipping</div>
					<div class="col-sm-4 col-xs-4 text-right">$${cartService.getCartShippingCostByUserLogin(currentUser.getPrincipal().getUsername())}</div>
				</div>
			</li>
			<li>
				<div class="row">
					<div class="col-sm-8 col-xs-8">Total</div>
					<div class="col-sm-4 col-xs-4 text-right">$${cartService.getCartTotalByUserLogin(currentUser.getPrincipal().getUsername())}</div>
				</div>
			</li>
			<li>
				<div class="row">
					<div class="col-sm-6 col-xs-6">
						<a class="btn btn-default" href="cart">Cart</a>
					</div>
					<div class="col-sm-6 col-xs-6 text-right">
						<a class="btn btn-primary" href="login">Checkout</a>
					</div>
				</div>
			</li>
		</ul>
	</c:otherwise>
</c:choose>
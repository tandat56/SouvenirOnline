cart = {
    items:{}, /*-- Chứa hàng đã chọn --*/
    /*-- Thêm hàng vào giỏ --*/
    add(id, name, price){
        if(this.items[id]){ /*-- có rồi -> tăng số lượng --*/
            this.items[id].quantity++;
        }
        else{ /*-- chưa có -> tạo và bỏ vào giỏ --*/
            this.items[id] = {id: id, name: name, price: price, quantity: 1}
        }
        this.save();
        this.show_info();
        console.log(this.items)
    },
    /*-- Lưu hàng đã chọn vào sessionStorage --*/
    save(){
        var json = JSON.stringify(this.items);
        sessionStorage.setItem("cart", json);
    },
    /*-- Đọc hàng đã chọn từ sessionStorage --*/
    read(){
        var json = sessionStorage.getItem("cart");
        if(json){
            this.items = JSON.parse(json);
        }
        this.show_info();
    },
    /*-- Lấy tổng số mặt hàng trong giỏ --*/
    get count(){
        var total = 0;
        for(var id in this.items){
            total += this.items[id].quantity;
        }
        return total;
    },
    /*-- Lấy tổng số tiền trong giỏ --*/
    get amount(){
        var total = 0;
        for(var id in this.items){
            total += this.items[id].price * this.items[id].quantity;
        }
        return Math.round(total*100)/100; // định dạng 2 số lẻ
    },
    /*-- Hiển thị thông tin tổng hợp giỏ hàng --*/
    show_info(){
        $(".cart-cnt").html(this.count);
        $(".cart-amt").html(this.amount);
    },
    /*-- Xóa sách giỏ hàng --*/
    clear(){
        sessionStorage.removeItem("cart");
        this.items = {};
        this.show_info();
        this.show_all();
    },
    /*-- Hiển thị giỏ hàng và thông tin tổng hợp --*/
    show_all(){
        $("tbody.cart-items").empty();
        for(var id in this.items){
            var item = this.items[id];
            var tr = `
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td>${item.price}</td>
						<td>
							<input value="${item.quantity}" onchange="cart.update(${item.id}, this.value)" type="number" min="1" style="width:60px;">
						</td>
						<td>${Math.round(item.price*item.quantity*100)/100}</td>
						<td>
					    	<button onclick="cart.remove(${item.id})" class="btn btn-sm btn-danger">
					    		<span class="glyphicon glyphicon-trash"></span>
					    	</button>
					    </td>							
					</tr>
				`;
            $("tbody.cart-items").append(tr);
        }
    },
    /*-- Cập nhật số lượng của một mật hàng --*/
    update(id, newqty){
        this.items[id].quantity = newqty;
        this.save();
        this.show_info();
        this.show_all();
    },
    /*-- Xóa một mặt hàng khỏi giỏ --*/
    remove(id){
        delete this.items[id];
        this.save();
        this.show_info();
        this.show_all();
    }
}

$(function(){
    cart.read(); /*-- Đọc từ sessionStorage khi trang web chạy --*/
})
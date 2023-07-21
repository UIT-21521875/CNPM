function SubForm(number) {

  $(`#addCart${number}`).submit(function(e) {
    e.preventDefault();
  $.ajax({
    url: "/cart/add",
    type: "post",
    
    data: $(`#addCart${number}`).serialize(),
        success: function (r) {
      if (r.result === 1) {
        alert("Thêm thành công");
      } else alert("Có chút vấn đề, mời bạn thử lại");
    },
    
  });
  
  })
}

$(document).ready(function () {
    $('#quantityInput').on('input', function () {
      var updatedQuantity = $(this).val();
  
console.log("updatQuantity: ",updatedQuantity)
      // Make an AJAX request to update the quantity in the server-side script
    //   $.ajax({
    //     url: '/updateQuantity', // Update this with your server endpoint
    //     method: 'POST',
    //     data: { quantity: updatedQuantity },
    //     success: function (data) {
    //       // Handle the success response (optional)
    //       console.log('Quantity updated successfully!');
    //     },
    //     error: function (error) {
    //       // Handle errors (optional)
    //       console.error('Error updating quantity:', error);
    //     }
    //   });
    // });
})});
  // Add event listener to quantity input fields

  $.ajax({
    url: "/cart/total",
    type: "get",
    success: function (r) {
      $("#cart31").html(
        ` <strong>${r} VND</strong>`

      );
    },
  });
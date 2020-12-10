
$(document).ready(function () {
    console.log("Loaded...");
    $('#reg-form').on("submit", function (event) {
        event.preventDefault(); // Stay on this page                                      

        let form = new FormData(this);

        $('#submit-btn').hide();
        $('#loader').show();

        // send data to register servlet
        $.ajax({
            url: "RegisterServlet",
            type: "POST",
            data: form,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                $('#submit-btn').show();
                $('#loader').hide();

                if (data.trim() === 'done') {
                    swal("Registered Successful. We're redirecting to login page")
                            .then((value) => {
                                window.location = "login_page.jsp";
                            });
                } else {
                    swal(data);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                $('#submit-btn').show();
                $('#loader').hide();

                swal("Registration Faild.");
            },
            processData: false,
            contentType: false
        });

    });
});
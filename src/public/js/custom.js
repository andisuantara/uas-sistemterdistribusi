console.log("custom.js loaded");

document.addEventListener('DOMContentLoaded', function() {
    console.log("DOM fully loaded and parsed");
    setTimeout(function() {
        let successAlert = document.getElementById('alert-1');
        if (successAlert) {
            successAlert.style.display = 'none';
            console.log("Success alert hidden");
        }

        let errorAlert = document.getElementById('alert-2');
        if (errorAlert) {
            errorAlert.style.display = 'none';
            console.log("Error alert hidden");
        }
    }, 5000);
});
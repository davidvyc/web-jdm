document.addEventListener('DOMContentLoaded', function () {
    if (window.location.pathname === '/auto') {
        var modal = document.getElementById("myModal");
        var form = document.getElementById('deleteForm');
        var deleteButton = document.querySelector('.btn.btn-outline.btn-error');
        document.querySelector('.btn.btn-primary').addEventListener('click', closeModal);

        this.setFormAction = function(countryId) {
            form.action = '/auto/delete/' + countryId;
            modal.classList.remove("hidden");
            deleteButton.dataset.id = countryId;
        };

        var modalHandler = {
            openModal: setFormAction
        };

        function closeModal() {
            modal.classList.add("hidden");
        }

        var btns = document.querySelectorAll('.btn.btn-error');
        btns.forEach(function(btn) {
            btn.addEventListener('click', function() {
                var countryId = this.dataset.id;
                modalHandler.openModal(countryId);
            });
        });
    }
});
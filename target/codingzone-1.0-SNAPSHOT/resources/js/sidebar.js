
// ============ active link ============
let link = document.querySelectorAll('.sidebar-link');
let sidebar_link_text = document.querySelectorAll('.sidebar-link-text');

link.forEach(function (item) {
    item.addEventListener('click', function () {
        link.forEach(function (item) {
            item.classList.remove('active');
        });
        item.classList.add('active');

        sidebar_link_text.forEach(function (item) {
            item.style.color = '#4339F234';
        });
        item.querySelector('.sidebar-link-text').style.color = '#4339F2';
    });
});
// ============ t ============



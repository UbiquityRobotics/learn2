// Adding logic for button on version controller to work:
document.addEventListener('DOMContentLoaded', function () {
    const current = document.querySelector('.rst-current-version');
    const others = document.querySelector('.rst-other-versions');

    if (current && others) {
        current.addEventListener('click', function (e) {
            e.stopPropagation();
            others.style.display = (others.style.display === 'block') ? 'none' : 'block';
        });

        document.addEventListener('click', function () {
            others.style.display = 'none';
        });
    }
});



document.addEventListener('DOMContentLoaded', function () {
    const flexFill = document.querySelector('.flex-fill');
    
    flexFill.addEventListener('mouseover', function () {
        this.querySelector('div').style.display = 'block';
    });

    flexFill.addEventListener('mouseout', function () {
        this.querySelector('div').style.display = 'none';
    });
});

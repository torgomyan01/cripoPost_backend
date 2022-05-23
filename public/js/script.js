const {active, none } = {
    active: 'active',
    none: 'd-none',
}



const mobileMenu = $('#mobile-menu');
const mobileMenuBlock = $('#mobile-menu-block');

mobileMenu.on('click', function (){
    if(mobileMenuBlock.hasClass(active)){
        mobileMenuBlock.removeClass(active);
        mobileMenu.html(`
            <i class="fa-solid fa-bars fs40"></i>
        `)
        document.body.style.overflow = 'auto';
    } else {
        mobileMenuBlock.addClass(active);
        mobileMenu.html(`
            <i class="fa-solid fa-xmark-large fs40"></i>
        `);
        document.body.style.overflow = 'hidden';
    }
})
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


const link = $('.info .rating-color').next('span');
const url = link.text();
const productBody = $('.product-body');

const linkAuthor = `
    <div class="pb-2">
        <a href="https://${url}" target="_blank">
            <i class="fa-solid fa-globe me-1"></i>
            Источник
        </a>
    </div>
`

productBody.append(linkAuthor)

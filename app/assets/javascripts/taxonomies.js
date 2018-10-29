window.addEventListener('DOMContentLoaded', () => {
  const taxonomyRoot = Array.from(document.getElementsByClassName('taxonomy-root'));
  const taxonsList = Array.from(document.getElementsByClassName('taxons-list'));
  
  taxonomyRoot.forEach((category) => {
    category.addEventListener('mouseover', (anchor) => {
      const nextList = anchor.target.nextElementSibling;
      taxonsList.forEach((taxon) => {
        taxon.classList.remove('menu-active');
      });
      nextList.style.left = 0;
      nextList.classList.add('menu-active');
      
      nextList.onmouseleave = () => {
        nextList.classList.remove('menu-active');
      }
    });
  });
});

//HTMLCollection
// const backLink = document.getElementsByClassName('back__link')

// for (let i = 0; i < backLink.length; i++){ 
// 	backLink.item(i).addEventListener('click', e => history.back())
// }


// Node List
const backLink = document.querySelectorAll('.back__link')

backLink.forEach(link =>  {
	link.addEventListener('click', e => history.back())
});
document.addEventListener('DOMContentLoaded', () => {
	const toggle = document.getElementById('toggle');
	const menu = document.getElementById('site-navigation');
	const overlay = document.getElementById('overlay');
	const closeNavMenu = document.getElementById('closeNavMenu');

	if (!toggle || !menu || !overlay || !closeNavMenu) return;

	function openMenu() {
		overlay.classList.add('overlay');
		menu.classList.add('is-active');
		toggle.classList.add('u-hidden');
	}

	function closeMenu() {
		overlay.classList.remove('overlay');
		menu.classList.remove('is-active');
		toggle.classList.remove('u-hidden');
	}

	toggle.addEventListener('click', (e) => {
		e.stopPropagation();
		openMenu();
	});

	overlay.addEventListener('click', closeMenu);
	closeNavMenu.addEventListener('click', closeMenu);
});

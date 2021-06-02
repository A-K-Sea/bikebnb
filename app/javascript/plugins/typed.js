import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const text = document.querySelector('#banner-typed-text');

  if (text) {
    new Typed('#banner-typed-text', {
      strings: ["Rent or lease...", "BikeBNB"],
      typeSpeed: 50,
      loop: false
    });
  };
}

export { loadDynamicBannerText };

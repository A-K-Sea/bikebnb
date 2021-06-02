import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Rent or lease...", "BikeBNB"],
    typeSpeed: 50,
    loop: false
  });
}

export { loadDynamicBannerText };

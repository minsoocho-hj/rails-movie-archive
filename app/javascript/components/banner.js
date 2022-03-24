import Typed from "typed.js";

const loadDynamicBannerText = () => {
  new Typed("#banner-typed-text", {
    strings: ["horror", "classic", "action", "SCI-FI", "thriller"],
    typeSpeed: 90,
    loop: true,
  });
};

export { loadDynamicBannerText };

// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import { loadDynamicBannerText } from "../components/banner";
import { initSelect2 } from "../components/init_select2";
import { initSweetalert } from "../plugins/init_sweetalert";

document.addEventListener("turbolinks:load", () => {
  // Call your JS functions here
  // [...]
  initSweetalert(
    "#sweet-alert-demo",
    {
      title: "Are you sure?",
      text: "This action cannot be reversed",
      icon: "warning",
    },
    (value) => {
      if (value) {
        const link = document.querySelector("#delete-link");
        link.click();
      }
    }
  );
  loadDynamicBannerText();
  initSelect2();
});

Rails.start();
Turbolinks.start();
ActiveStorage.start();

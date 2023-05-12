import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }

}

document.querySelector(".navbar-vanilla-profile img")
  .addEventListener("click", (event) => {
    document.querySelector(".navbar-vanilla-profile").classList.toggle("active");
  })

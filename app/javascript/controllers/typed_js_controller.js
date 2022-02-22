import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Welcome to the first NFT rental service for Star Atlas, where you can browse, offer, and rent NFTs for the best gaming experience"],
      typeSpeed: 50,
      loop: true
    });
  }
}

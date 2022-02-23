import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["formContainer"]

  toggle() {
    this.formContainerTarget.classList.remove("d-none");
  }
}

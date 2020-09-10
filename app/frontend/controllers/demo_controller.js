// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "content", "output" ]

  pushme() {
    let content = this.contentTarget.value
    console.log(content)
    this.outputTarget.textContent = `hello, ${this.contentTarget.value}`
  }

  pushit() {
    this.outputTarget.textContent = `yoyo, ${this.contentTarget.value}`
  }
}

/*
 ******************************************************************************
 * Cucumber/Gherkin
 * ============================================================================
 * 
 * NOTES:
 * - Arrow functions not supported by cucumber when accessing the 'world' class
 *   SEE: github.com/cucumber/cucumber-js/blob/main/docs/support_files/world.md
 * 
 ******************************************************************************
*/

const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

// ----------------------------------------------------------------------------
// Steps for the first learning outcome
// ----------------------------------------------------------------------------

Given("a fibonacci sequence initialized to {int}", function (value) {
    try {
        this.fibonacci.init(value);
    } catch {
        this.itThrew();
    }
});

Given("a fibonacci sequence initialized to the float {float}", function(float) {
this.fibonacci.init(float);
});

When("a fibonacci sequence is started", function () {
    // Nothing to do, as done by the custom world
});

When("the sequence is skipped {int} time(s)", function (value) {
        this.fibonacci.skip(value);
});

Then("the next number should be {int}", function (value) {
    assert(this.fibonacci.next() == value);
});

Then("the state should be {string}", function (value) {
    assert(this.fibonacci.state() == value);
});

Then("it should throw an exception", function () {
    assert(this.hasThrown());
});
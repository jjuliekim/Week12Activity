import javascript

/**
* find tests that call a function called "pressActionKey" 
* (hint: you can call getName() on a Function node to get its name, if it has one)
*/

/**
 * Holds if a function is a test.
 */
predicate isTest(Function test) {
  exists(CallExpr describe, CallExpr it |
    describe.getCalleeName() = "describe" and
    it.getCalleeName() = "it" and
    it.getParent*() = describe and
    test = it.getArgument(1)
  )
}

/**
* Holds if `caller` contains a call to `callee`.
*/
predicate calls(Function caller, Function callee) {
  exists(DataFlow::CallNode call |
    call.getEnclosingFunction() = caller and
    call.getACallee() = callee
  )
}

from Function test, Function callee
where isTest(test) and calls(test, callee) and callee.getCalleeName = "pressActionKey"
select test, "test calls 'pressActionKey' function"
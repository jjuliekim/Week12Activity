/**
 * @description Find functions that are longer than 10 lines
 * @kind problem
 * @id javascript/find-all-tests
 * @problem.severity recommendation
 */

/**
* find functions that are longer than 10 lines 
* (hint: you can call getNumLines() on any AST node to get their length)
*/
import javascript

from Function function
where function.getNumLines() > 10
select function, "is longer than 10 lines"

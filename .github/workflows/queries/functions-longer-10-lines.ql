/**
* find functions that are longer than 10 lines 
* (hint: you can call getNumLines() on any AST node to get their length)
*/
import javascript

/**
* Holds if a function is longer than 10 lines
*/
predicate isLongerThanTen(Function function) {
  exists(function.getNumLines() > 10)
}

from Function function
where isLongerThanTen(function)
select function, "is longer than 10 lines"

/**
* find functions that are longer than 10 lines 
* (hint: you can call getNumLines() on any AST node to get their length)
*/
import javascript

/**
* Holds if a function is longer than 10 lines
*/
predicate isLongerThanTen(ASTNode node) {
  exists(ASTNode node | node.getNumLines() > 10)
}

from ASTNode node
where isLongerThanTen(node)
select node, "is longer than 10 lines"

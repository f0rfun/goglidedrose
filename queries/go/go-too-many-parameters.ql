/**
 * @name Function with too many parameters
 * @description Functions with more than 5 parameters might be doing too much or might benefit from refactoring.
 * @kind problem
 * @problem.severity warning
 * @precision medium
 * @id go/too-many-parameters
 * @tags maintainability
 *       readability
 */

 import go

 // Define the parameter threshold
 parameterThreshold := 5;
 
 from Function f
 where f.getNumberOfParameters() > parameterThreshold
 select f, "Function has more than " + string(parameterThreshold) + " parameters."
 
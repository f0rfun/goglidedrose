/**
 * @name Function with too many parameters
 * @description Functions with too many parameters might be doing too much or might benefit from grouping parameters.
 * @kind problem
 * @problem.severity warning
 * @precision medium
 * @id go/too-many-parameters
 * @tags maintainability
 *       readability
 */

import go

// You can adjust this number based on your preferences
int parameterThreshold = 5;

from FuncDecl func, int paramCount
where
  paramCount = func.getNumParameters() and
  paramCount > parameterThreshold
select func, "[CUSTOM_QUERY: go-too-many-parameters.ql] Function has " + paramCount.toString() + " parameters, which is more than the recommended " + parameterThreshold.toString() + "."
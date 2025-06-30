/**
 * @name Deprecated function usage
 * @description Detects calls to functions marked as deprecated.
 * @kind problem
 * @tags security, maintainability, reliability
 * @id go/deprecated-function-call
 */

import go

from FunctionCall call, Function func
where
  call.getTarget() = func and
  func.hasAnnotation("deprecated")
select call, "Usage of deprecated function '" + func.getName() + "'. Consider updating this call."

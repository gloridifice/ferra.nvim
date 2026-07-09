;; extends
(
  (type_constructor_or_function_call_expression
    (type_declaration
      (identifier) @function.call.wgsl))
  (#set! priority 105)
  
)

(
  (function_return_type_declaration 
    (type_declaration 
      (identifier) @type.wgsl)) 
  (#set! priority 105)
)

(
  (variable_identifier_declaration 
    (type_declaration 
      (identifier) @type.wgsl)) 
  (#set! priority 105)
)

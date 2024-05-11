# <a name="dynamic-methods">Dynamic Methods & </br> Method Missing</a>

Dynamic Methods Metaprogramming in Ruby allows for the creation of methods at runtime, a concept known as Dynamic Methods. This powerful feature enables programmers to define methods on-the-fly, based on user input or other runtime data. Dynamic methods enhance flexibility and can reduce repetitive code by generating methods programmatically. For instance, instead of manually defining accessor methods for each attribute, a metaprogram can iterate over attribute names and define these methods dynamically. This approach is particularly useful when dealing with objects that interact with external systems, such as databases, where the schema might change.

Method Missing The method_missing hook is a cornerstone of Ruby’s metaprogramming capabilities. It is invoked whenever a program calls a method that does not exist on an object. By overriding method_missing, developers can intercept these calls and handle them gracefully. This technique allows for the creation of “ghost methods” that appear to exist, as Ruby will dynamically respond to method calls based on logic defined within method_missing. This can be used to create flexible and dynamic APIs, where method calls are translated into actions or queries, such as building SQL queries based on method names.

Together, Dynamic Methods and method_missing provide Ruby programmers with powerful tools to write concise, flexible, and maintainable code. They embody the dynamic nature of Ruby and enable the creation of sophisticated programming constructs that can adapt to the needs of the application at runtime. Metaprogramming with these techniques encourages a DRY (Don’t Repeat Yourself) approach and can lead to elegant solutions for complex problems.

**Related list of keywords, methods, and concepts in Ruby:** </br>

1. `define_method`
2. `send`
3. `method_missing`
4. `respond_to?`
5. `respond_to_missing?`
6. `super`

# Exploring Meta Programming using Ruby

## <a name="introduction">Table of Contents</a>

1. <a href="#object-model"> Object Model </a>
2. <a href="#dynamic-methods"> Dynamic Methods & Method Missing </a>
3. <a href="#blocks-n-evals"> Blocks & Evals</a>

---

## <a name="object-model">Object Model in Ruby</a>

Understanding the Object Model The Object Model in Ruby is foundational for understanding metaprogramming code snippet that deal with objects, classes, modules. It is built upon the concept that everything is an object, including classes themselves. Each object is composed of instance variables and a reference to a class12. The methods, however, reside in the class and are shared among all instances of that class. This structure allows for dynamic method invocation and manipulation, which is at the heart of metaprogramming. Classes in Ruby are instances of the Class class, and they can be manipulated just like any other object. This flexibility is what enables the powerful metaprogramming capabilities of Ruby. </br>

Classes, Modules, and Method Lookup Ruby’s classes are also modules with additional capabilities, such as instantiation and inheritance. The method lookup process follows a path from the object’s class up through its ancestors until the method is found or the top of the hierarchy is reached. This path is known as the ancestors chain3. Modules can be included or prepended in classes, affecting the method lookup path and allowing for mixin functionalities. Understanding how Ruby executes methods after finding them is crucial for metaprogramming, as it involves the concept of the receiver and the current object context, referred to as self.

After understanding these core concepts of ruby's object model, we can appreciate the metaprogramming aspects of the code examples given in src/object_model directory. These examples demonstrate that classes & objects in Ruby show Introspective & Reflective capabilities and can modify their class hierarchy, method declarations, and get list of tehir instance methods, variables, etc during runtime.

**Related list of keywords, methods, and concepts in Ruby:** </br>

1. `prepend`
2. `include`
3. `instance_methods()`
4. `instance_variables()`
5. `methods()`
6. Open Classes
7. Monkey Patching
8. `superclass`
9. `ancestors`

## <a name="dynamic-methods">Dynamic Methods & </br> Method Missing</a>

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

---

## <a name="blocks-n-evals">Blocks & Evals</a>

Blocks and Closures In Ruby, blocks are anonymous functions that can be passed to methods as arguments. They are one of the foundations of Ruby’s metaprogramming capabilities1. Blocks can capture local variables from the surrounding context, making them closures. This feature allows for dynamic code execution and is essential for writing DSLs (Domain-Specific Languages).

instance_eval and class_eval The instance_eval and class_eval (also known as module_eval) methods are powerful metaprogramming tools used to evaluate a block or a string of code in the context of a particular object or class/module. instance_eval changes the context to the receiver object, enabling direct access to its instance variables and private methods. class_eval operates similarly but within the scope of a class or module, allowing for the addition or modification of instance methods.

Class Macros and Singleton Methods Class macros are methods that define other methods or perform tasks at the class level when a class is defined. They are used to create DSLs within classes and modules. Singleton methods are methods defined on a single object (an instance of a class), providing behavior unique to that object. They are often used to define class-level behavior without affecting other instances.

Singleton Classes A singleton class (also known as a metaclass or eigenclass) is an anonymous class that is automatically created for every object. It holds singleton methods and allows for the addition of methods to individual objects. Singleton classes play a crucial role in Ruby’s metaprogramming, as they provide a way to extend objects with custom behavior dynamically.

These concepts collectively enable Ruby programmers to write concise and flexible code, making metaprogramming a powerful technique for code generation, reflection, and creating elegant DSLs.

1. Blocks
   - Closures
   - `yield`
   - `Proc` objects
   - Lambda functions
2. Evals
   - `instance_eval`
   - `class_eval`
   - Context switching
   - Evaluating code within instance scope & class scope
   - Accessing private methods
3. Class Macros

   - `attr_accessor`
   - `attr_reader`
   - `attr_writer`

4. Single Class definitions:
   - Singleton Methods
   - Singleton Classes
   - Eigenclasses

---

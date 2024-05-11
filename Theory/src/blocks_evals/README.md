# <a> Blocks & Evals</a>

Blocks and Closures In Ruby, blocks are anonymous functions that can be passed to methods as arguments. They are one of the foundations of Ruby’s metaprogramming capabilities1. Blocks can capture local variables from the surrounding context, making them closures. This feature allows for dynamic code execution and is essential for writing DSLs (Domain-Specific Languages).

instance_eval and class_eval The instance_eval and class_eval (also known as module_eval) methods are powerful metaprogramming tools used to evaluate a block or a string of code in the context of a particular object or class/module. instance_eval changes the context to the receiver object, enabling direct access to its instance variables and private methods. class_eval operates similarly but within the scope of a class or module, allowing for the addition or modification of instance methods.

Class Macros and Singleton Methods Class macros are methods that define other methods or perform tasks at the class level when a class is defined. They are used to create DSLs within classes and modules. Singleton methods are methods defined on a single object (an instance of a class), providing behavior unique to that object. They are often used to define class-level behavior without affecting other instances.

Singleton Classes A singleton class (also known as a metaclass or eigenclass) is an anonymous class that is automatically created for every object. It holds singleton methods and allows for the addition of methods to individual objects. Singleton classes play a crucial role in Ruby’s metaprogramming, as they provide a way to extend objects with custom behavior dynamically.

These concepts collectively enable Ruby programmers to write concise and flexible code, making metaprogramming a powerful technique for code generation, reflection, and creating elegant DSLs.

1. Blocks
   - Closures
   - `yield`
   - `block_given?`
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

# <a name="object-model">Object Model in Ruby</a>

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

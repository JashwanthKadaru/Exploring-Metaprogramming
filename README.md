# PL Project: Exploring Meta Programming Using Ruby & Lisp

## Team Members

- Jashwanth Kadaru - IMT2021095 ([JashwanthKadaru](https://github.com/JashwanthKadaru))
- Danesh Manoj Toshniwal - IMT2021094 ([daneshtoshniwal](https://github.com/daneshtoshniwal))
- Neil Jeetendra Handa - IMT2021037 ([neilhanda](https://github.com/neilhanda/))

## Table of Contents

1. <a style="color: #4682B4;" href="#introduction">Introduction</a>
2. <a style="color: #4682B4;" href="#how-meta-programming-works">How Meta Programming Works</a>
3. <a style="color: #4682B4;" href="#impact-of-meta-programming-on-languages-and-types">Impact of Meta Programming on Languages and Types</a>
4. <a style="color: #4682B4;" href="#object-model-ruby-mp">Object Model (Ruby MP)</a>
5. <a style="color: #4682B4;" href="#dynamic-methods--ghost-methods">Dynamic Methods & Ghost Methods</a>
6. <a style="color: #4682B4;" href="#blocks--evals">Blocks & Evals</a>
7. <a style="color: #4682B4;" href="#practical-applications-of-meta-programming">Practical Applications of Meta Programming</a>
8. <a style="color: #4682B4;" href="#conclusion-code-demo">Conclusion: Code Demo</a>

---

## <a name="introduction" style="color: #4682B4;">Introduction</a>

Meta programming involves writing code that manipulates language constructs at runtime. This project explores meta programming using Ruby and Lisp, delving into its mechanisms, syntax, and practical applications.

## <a name="how-meta-programming-works" style="color: #4682B4;">How Meta Programming Works</a>

Meta programming dynamically alters a program's structure and behavior at runtime. In languages like Ruby, language constructs are preserved in memory, allowing for introspection and modification during runtime. The comparison of runtime between meta-programming languages like Ruby and C can be compared to that between a Live Town and a Ghost Town. The constructs of the program are still pretty much the same during runtime, which enables introspection and action on self (reflection).

## <a name="impact-of-meta-programming-on-languages-and-types" style="color: #4682B4;">Impact of Meta Programming on Languages and Types</a>

Meta programming impacts language design and type systems. It introduces features that enhance flexibility and expressiveness, particularly in dynamically typed languages like Ruby. Dynamic Runtime environment is essential, and essential any language with compiler, unless specially designed to, does not support metaprogramming.

## <a name="object-model-ruby-mp" style="color: #4682B4;">Object Model (Ruby MP)</a>

Ruby's object model allows for open classes, where existing classes can be modified at runtime. This section explores how classes and objects are represented and manipulated in Ruby.

## <a name="dynamic-methods--ghost-methods" style="color: #4682B4;">Dynamic Methods & Ghost Methods</a>

Dynamic methods and ghost methods enable code reuse and flexibility through meta programming techniques. By defining methods dynamically, developers can avoid code duplication and improve maintainability.

## <a name="blocks--evals" style="color: #4682B4;">Blocks & Evals</a>

Blocks and evals in Ruby provide additional meta programming features. Blocks enable the creation of closures, while evals allow for the execution of code in different scopes. instance_eval and class_eval are examples of this. Procs are blocks that can be passed as arguments and are treated as objects. They can be called dynamically using program logic via invocation of a method named 'call'. Class Macros help avoid code duplication, and the amount of code for defining basic class attributes. They also help in handling runtime situations with lesser code. Examples include: attr_accessor, attr_reader, attr_writer, deprecate.

## <a name="practical-applications-of-meta-programming" style="color: #4682B4;">Practical Applications of Meta Programming</a>

Meta programming finds practical applications in domain-specific languages (DSLs), frameworks like ActiveRecord, and web development tools like Sinatra. These applications leverage meta programming to enhance productivity and maintainability.

## <a name="conclusion-code-demo" style="color: #4682B4;">Conclusion: Code Demo</a>

In conclusion, meta programming offers powerful tools for enhancing code flexibility and expressiveness. Through practical demonstrations and examples, this project showcases the potential of meta programming in modern software development.

Thank You !!!

---

## <span style="color: #4682B4;"> Instructions for running Example codes </span>

1. You need to have `ruby` and `rubyrails` installed & setup on your pc.

2. To run the normal example codes, all you need to do is, bring up the ruby interpreter shell using the command `irb` in your terminal.

3. Copy paste the code segment that you want to run into the `irb`. The second method is to directly navigate to the directory and run the file using `ruby filename.rb` in the terminal.

4. To run the applications and code files that use ruby libraries like `activerecord` and `sinatra`, you need to install and download the required gems with the same names. No special ruby gem is required for running DSL code examples. Be aware of another gem/library that is used in the code for demonstration purposes, called `faker`, which generates greeting messages, just to display some message on the /greet page of the simple sinatra web-app.

5. To run and check ActiveRecord demo codefiles, you need to have a PostgreSQL db setup and have to update the credentials and database information in the code, in `config` object.

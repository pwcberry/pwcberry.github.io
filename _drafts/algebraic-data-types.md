---
title: Algebraic Data Types
---

# Algebraic Data Types

An Algebraic Data Type (ADT) is a type defined by one or more data constructors, each of which may contain zero or more arguments. A data type is the _sum_ or _union_ of its data constructors and each data constructor is the _product_ of its arguments. 

ADTs form the basis of other data structures.

Pattern matching is a convenient way of operating over ADTs.

## ADTs and Encapsulation

Concerns over encapsulation - the foundation of object-oriented programming - are apporached differently in functional programming. It is fine to make public data constructors through an API; after all, data structures in FP are immutable thus there is lower risk for bugs that comes with exposed mutable state and violation of invariants.

ADTs are used in situations where the set of casese is _closed_ (known to be fixed). For `List` and `Tree`, changing the set of data constructors would cause significant change in meaning for these types.

Information hiding is handled separately to data types rather than being baked-in directly. (What is an example?)

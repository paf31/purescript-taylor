## Module Data.Taylor

Taylor series as lazy lists of coefficients.

#### `Taylor`

``` purescript
newtype Taylor a
```

A Taylor series, with coefficients in the specified `Semiring`.

By varying the base `Semiring`, we can do various interesting things:

* Using `Number`, we can compute arbitrary higher order derivatives of functions.
* Using `Complex`, we can compute path derivatives of functions.
* Using the `Free` `Semiring`, we can implement symbolic differentiation.

##### Instances
``` purescript
Lazy (Taylor a)
Functor Taylor
(Semiring a) => Semiring (Taylor a)
(Ring a) => Ring (Taylor a)
(CommutativeRing a) => CommutativeRing (Taylor a)
(Eq a, Field a) => EuclideanRing (Taylor a)
(Eq a, Field a) => Field (Taylor a)
```

#### `coefficients`

``` purescript
coefficients :: forall a. Taylor a -> List a
```

Extract the coefficients as a lazy list.

#### `constant`

``` purescript
constant :: forall a. Semiring a => a -> Taylor a
```

A Taylor series representing a constant function.

#### `eval0`

``` purescript
eval0 :: forall a. Taylor a -> a
```

Evaluate a Taylor series at zero.

#### `d`

``` purescript
d :: forall a. Semiring a => Taylor a -> Taylor a
```

The derivative of a Taylor series.

#### `integrate`

``` purescript
integrate :: forall a. Field a => Taylor a -> Taylor a
```

The integral of a Taylor series.

#### `x`

``` purescript
x :: forall a. Semiring a => Taylor a
```

A Taylor series which has a non-zero coefficient only for the x term.



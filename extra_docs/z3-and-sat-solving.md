# Z3 and SAT Solving

At the foundation of this verification stack is the [Z3 Theorem Prover](https://github.com/Z3Prover/z3) from Microsoft Research. Z3 is an SMT (Satisfiability Modulo Theories) solver.

## What is SAT Solving?

Given a Boolean formula, a SAT solver answers: *Does any assignment of true/false values satisfy this formula?*

- If **satisfiable**, it returns a model (an assignment that satisfies the formula).
- If **unsatisfiable**, no satisfying assignment exists.

In software verification, we typically encode the negation of the desired property and ask whether a counterexample exists. The formula is conceptually:
`(Code Execution) AND (Security Property is False)`.

If this formula is **unsatisfiable**, the property holds for all modeled inputs. If it is **satisfiable**, Z3 provides a counterexample.

## Why SM*T* Instead of SAT?

Program semantics involve structured domains: fixed-width bitvectors, arrays, arithmetic, and more. In SMT, "modulo theories" means the solver reasons with these domains directly rather than reducing everything to raw propositional variables.

For example, Z3 natively understands bitvector operations such as shifts, masking, and overflow behavior. That makes it practical to verify low-level systems code while preserving precise machine-level semantics.

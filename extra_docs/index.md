# How We Prove Code is Correct

This documentation explains how we use formal verification to validate critical behavior in SDEP (Secure Device Enrollment Protocol) implementations.

This work was developed as a class project for Computer Aided Reasoning for Software (CARS) (University of Washington), Spring 2026 as part of the Professional Masters Program.

Most engineering teams rely on testing and review for code quality. As AI generated code becomes more and more prevalent, these tools are no longer suffecent to ensure quality. We need an automated way to prove the correctness of AI generated code.

Formal verification is very powerful. It can prove whether a property holds for all inputs within a defined model. However, historically it has rarely been used because it is slow, difficult and results in code that is correct for a definition of correct you need a PhD to parse.

This project aims to make formal verification a bit more accessible to your average engineer. It offers tooling for auto generating SAW scripts ([saw-spec-gen](https://github.com/AmeliaRose802/saw-spec-gen)) as well as tools to convert your proven Cryptal specs into markdown that will work with your existing documentation server.

Demo protocol is a similar design to Metadata Security Protocol used in Azure but based only on external public documentation. It serves as an example of how real C++ that is not pure math can be verified.

## C++ to Rust Equivalence


## Tools

To establish that selected C++ and Rust components are consistent with protocol-level specifications, this project uses:

- [Z3](https://github.com/Z3Prover/z3) — SMT solver that discharges the proof obligations.
- [SAW](https://saw.galois.com/) — symbolically executes compiled code and generates those obligations.
- [Cryptol](https://cryptol.net/) — language for the executable protocol specifications.
- [saw-spec-gen](https://github.com/AmeliaRose802/saw-spec-gen) — auto-generates SAW harnesses from source and specs.
- [pretty-specs](https://github.com/AmeliaRose802/pretty-specs) — turns proven Cryptol specs into documentation.

The goal of these pages is to demonstrate how formal verification can be made more automated and user friendly. 

# MATH 6550 — Partial Differential Equations I

**Iowa State University · Department of Mathematics · Fall 2026**

**Instructor:** Xuan Hien Nguyen · xhnguyen@iastate.edu
**Meetings:** Tuesday/Thursday, 75 minutes · 30 class meetings
**Credits:** 3
**Text:** L. C. Evans, *Partial Differential Equations*, 2nd ed., AMS Graduate Studies in Mathematics 19.

---

## Catalog description

> Study of model problems of elliptic, parabolic and hyperbolic types, first order
> equations, conservation laws, transform methods, introduction to linear partial
> differential equations of arbitrary order, fundamental solutions.

## About this course

MATH 6550 is the first half of the graduate PDE sequence. The subject at this stage is
*explicit*: we write down formulas. Fundamental solutions, mean value properties,
d'Alembert and Kirchhoff and Poisson formulas, the Hopf–Lax and Lax–Oleinik formulas,
Fourier and Laplace transforms. Where a formula exists, we extract everything from it —
maximum principles, smoothness, propagation speed, uniqueness.

The point of the last three weeks is to show why that program eventually runs out. Most
PDE have no formula, and the modern replacement is to solve the equation weakly in a
Sobolev space and then argue that the weak solution is regular. We build the Sobolev
machinery — weak derivatives, \(W^{k,p}\), the Gagliardo–Nirenberg–Sobolev and Morrey
inequalities, Rellich–Kondrachov compactness — and close by using it to solve

\[
    -\Delta u = f \quad \text{in } U, \qquad u = 0 \quad \text{on } \partial U
\]

with no formula at all. That is where MATH 6560 picks up.

Roughly: Evans Chapters 2–4 in the first two thirds, Chapter 5 with a look into
Chapter 6 in the last third.

## Prerequisites

Graduate classification. Advanced calculus and real analysis: multivariable
integration, the divergence theorem, uniform convergence, \(L^p\) spaces, and the
dominated convergence theorem. Lebesgue integration is used freely from Week 1.

MATH 7190 is not required, but the course is built assuming most students have taken
it. If you have, you have already seen — in Sacks, *Techniques of Functional Analysis
for Differential and Integral Equations* — the method of characteristics for linear
first-order equations (§1.3.1), classification of second-order equations (§1.3.2),
distributions (Ch. 6), the Fourier transform (Ch. 7), and weak derivatives and Sobolev
spaces (§8.1). Those topics are recalled rather than developed here, and the time saved
is spent on Laplace's equation and on the Sobolev embedding theory, which Sacks does
not cover.

If you have *not* taken 7190 you can still follow the course, but expect to read Sacks
§1.3.1 before Week 2 and Ch. 6 and §8.1 before Thanksgiving. Come talk to me and I will
point you at the right pages.

## Learning outcomes

By the end of the term a successful student will be able to:

1. Classify a second-order linear PDE and explain what well-posedness in the sense of
   Hadamard does and does not guarantee.
2. Solve first-order equations by characteristics, and construct entropy solutions of
   scalar conservation laws, including shocks and rarefactions in the Riemann problem.
3. Derive and use the fundamental solutions of the Laplace, heat, and wave equations,
   and the Green's function representation on a half-space and a ball.
4. Deploy mean value properties, maximum principles, and energy methods to prove
   uniqueness, smoothness, and stability statements for each of the three model
   equations.
5. Apply separation of variables, similarity/self-similar reductions, and Fourier and
   Laplace transforms to obtain explicit solutions.
6. Compute weak derivatives, decide membership in \(W^{k,p}(U)\), and apply the
   Sobolev and Morrey embedding theorems.
7. Formulate a boundary value problem weakly and prove existence and uniqueness by the
   Lax–Milgram theorem.

## Materials

**Required.** Evans, 2nd ed. We use Chapters 2, 3, 4, 5, and §§6.1–6.2, with
Appendices A–C as reference. Buy or borrow a physical copy; you will be in it
constantly.

**Supplementary,** for when Evans is too terse or you want another voice:

- Strauss, *Partial Differential Equations: An Introduction* — gentler on Chapters 2
  and 4; good for building intuition before reading Evans on the same topic.
- John, *Partial Differential Equations* — classical, strong on Cauchy–Kovalevskaya and
  equations of arbitrary order.
- Gilbarg & Trudinger, *Elliptic PDE of Second Order* — the reference for maximum
  principles and Harnack; Chapters 2–3 complement Evans §2.2.
- Brezis, *Functional Analysis, Sobolev Spaces and PDE* — cleanest development of the
  Sobolev material in Weeks 13–15.
- Leoni, *A First Course in Sobolev Spaces*, 2nd ed. — careful and modern; consult for
  the one-dimensional theory and for sharp statements.

Handwritten lecture notes and problem sets will be posted on Canvas.

## Assessment

| Component | Weight |
|---|---|
| Problem sets (7) | 45% |
| Midterm exam, in class Thursday November 5 | 25% |
| Final exam, take-home | 30% |

**Problem sets.** Roughly biweekly, mostly from Evans' exercises. These are the course.
Collaboration is encouraged; write-ups must be your own and must name your
collaborators. Due dates on the lesson plan.

**Midterm.** In class, Thursday November 5, covering Chapters 2 and 3 — the model
equations and first-order theory.

**Final.** Take-home, distributed Thursday December 10 and due during finals week
(December 14–17). Cumulative, weighted toward Chapters 4 and 5.

## Policies

**Late work.** Four late days for the term, used in whole-day increments, no
explanation needed. Past that, only by prior arrangement.

**Prep week.** December 7–11 is Prep Week. Classes meet December 8 and 10 as usual; no
new graded work is assigned that week beyond the take-home final, consistent with
university policy.

**AI tools.** Use computational and language tools as you would a textbook or a
colleague — to look something up, check an idea, hunt for a counterexample. Do not
submit generated text or proofs as your own. If a tool materially shaped a solution,
add a sentence saying so. The standard is the one that applies to human collaboration:
you must understand and be able to defend every line you turn in.

**Accommodations.** Students with disabilities should contact Student Accessibility
Services and send me a Notification Letter as early in the term as possible.

**Academic integrity.** Governed by the ISU Student Code of Conduct.

## Fall 2026 calendar notes

- Classes begin Monday, August 24. First meeting: **Tuesday, August 25**.
- Labor Day, Monday, September 7 — does not affect this section.
- Thanksgiving Break, November 23–27 — **no class November 24 or 26**.
- Prep Week, December 7–11. Last class meeting: **Thursday, December 10**.
- Final Exam Week, December 14–17.

The schedule that follows is a plan, not a contract. If we fall behind, the
consolidation days and §4.6 compress first; the Sobolev unit does not.

---

*Sources: [ISU Course Catalog, MATH 6550](https://catalog.iastate.edu/azcourses/math/) ·
[ISU Academic Calendars](https://www.registrar.iastate.edu/academic-calendars)*

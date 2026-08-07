# MATH 6550 — Lesson Plan, Fall 2026

30 meetings, Tuesday/Thursday, 75 minutes. Section numbers refer to Evans,
*Partial Differential Equations*, 2nd ed. References to **Sacks** are to P. Sacks,
*Techniques of Functional Analysis for Differential and Integral Equations* (Elsevier,
2017), the MATH 7190 text.

---

## Design notes

**Assumed background from MATH 7190 (Sacks, through Ch. 8).** Most students arrive
having seen:

| Sacks | Topic | Consequence here |
|---|---|---|
| §1.3.1 | Characteristics, linear first-order in \(\mathbb{R}^2\); noncharacteristic condition; local existence (Thm 1.2) | L3 compressed from two meetings to one |
| §1.3.2, §1.4 | Classification of second-order PDE in \(\mathbb{R}^2\); well-posed vs. ill-posed | L1 is brisk review plus framing |
| Ch. 6 | Test functions, distributions, distributional derivative, convolution | L25 needs no build-up |
| Ch. 7 | Fourier series; Fourier transform on \(\mathbb{R}^N\); transforms of distributions | L24 is application, not development |
| §8.1 | **Weak derivatives, \(W^{k,p}\), \(H^k\), completeness, Meyers–Serrin, \(W_0^{k,p}\)** | L25 recalls rather than constructs |
| §8.3–8.5 | Fundamental solutions, including Laplace, heat, wave, via Fourier transform | L7 and L14 shorten at the front |

**What Sacks does *not* contain,** and what this course therefore owns entirely:
Gagliardo–Nirenberg–Sobolev and Morrey inequalities (the words do not appear in the
book), traces and extension operators, Poincaré's inequality, Rellich–Kondrachov
compactness, Lax–Milgram, and all of Evans Ch. 2–3 beyond the derivation of the
fundamental solutions — mean value properties, maximum principles, Green's functions,
Harnack, energy methods, and the entire nonlinear first-order theory.

**Reallocation.** The three meetings freed by the 7190 overlap go to Laplace's equation
(five meetings to seven), the heat equation (four to five), and a consolidation day.
Chapter 4 drops from four meetings to two, since transform methods are largely review.

**Pacing.** This cohort needs worked examples more than it needs proofs at speed.
Lectures marked ⊕ are deliberately slower: fewer results, more computation at the board.

---

## Part I — First-order equations (L1–L6)

### L1 · Tue Aug 25 — Orientation, classification, well-posedness
§1.1–1.2, App. A. *Sacks §1.3.2, §1.4 — review.*

Multi-index notation; what "solving" means. Classification of second-order linear
equations by the symbol — students have seen the \(\mathbb{R}^2\) change-of-variables
computation in Sacks §1.3.2, so state the general trichotomy and move on.
Well-posedness in the sense of Hadamard, with Hadamard's example: \(u(x,0)=0\),
\(u_y(x,0)=n^{-1}\sin nx\) for Laplace's equation. Preview the term: the trichotomy
predicts the behavior we spend Weeks 4–11 verifying.

### L2 · Thu Aug 27 — Transport equation
§2.1.

Homogeneous transport \(u_t + b\cdot Du = 0\) by characteristics; solutions constant
along lines. Nonhomogeneous problem; Duhamel's principle in its simplest form. No
smoothing occurs — flag this now, since the contrast with the heat equation (L14) is
the point of doing transport first.

### L3 · Tue Sep 1 — Method of characteristics, the general case ⊕
§3.1, §3.2. *Sacks §1.3.1 — review the first 20 minutes.*

*Recall from Sacks:* the characteristic ODEs \(\dot x = a\), \(\dot y = b\); the Cauchy
problem with data on a curve \(\Gamma\); the Jacobian condition and its derivation from
the inverse function theorem; Theorem 1.2. Restate in \(n\) variables — the statement
generalizes verbatim.

*New material,* which Sacks explicitly defers: the fully nonlinear equation
\(F(Du,u,x) = 0\). Setting \(p = Du\), \(z = u\), derive the full characteristic system
\[
    \dot{p} = -D_x F - (D_z F)\,p, \qquad
    \dot{z} = (D_p F)\cdot p, \qquad
    \dot{x} = D_p F .
\]
The third equation is the whole content of the generalization; spend the time there.
Compatibility conditions on the boundary data. Worked example: the eikonal equation
\(|Du| = 1\). A second example in which characteristics cross in finite time,
motivating everything in L5–L6.

### L4 · Thu Sep 3 — Hamilton–Jacobi and the Hopf–Lax formula
§3.3.

The Legendre transform and convex duality. The Hopf–Lax formula
\[
    u(x,t) \;=\; \min_{y \in \mathbb{R}^n}
    \left\{ t\, L\!\left(\frac{x-y}{t}\right) + g(y) \right\}
\]
as the value function of a variational problem. Lipschitz continuity and semiconcavity.
Nonuniqueness of Lipschitz solutions; the semiconcavity condition as a selection
principle, and uniqueness (§3.3.3, proof sketched).

**Problem Set 1 due** (§§1.1–1.2, 2.1, 3.2).

### L5 · Tue Sep 8 — Conservation laws: weak solutions and shocks ⊕
§3.4.1.

Scalar conservation laws \(u_t + F(u)_x = 0\). Why classical solutions cannot persist —
recall the crossing characteristics from L3. Integral (weak) formulation. Derivation of
the Rankine–Hugoniot condition
\[
    \sigma \;=\; \frac{F(u_\ell) - F(u_r)}{u_\ell - u_r}
\]
across a shock. Worked examples with Burgers' equation at the board.

### L6 · Thu Sep 10 — Entropy, Lax–Oleinik, the Riemann problem ⊕
§3.4.2–3.4.4.

Weak solutions are not unique; the entropy condition \(u_\ell > u_r\) for convex \(F\).
The Lax–Oleinik formula. The Riemann problem worked in full: shocks versus rarefaction
waves, and how the entropy condition selects between them. Uniqueness of entropy
solutions stated, proof sketched.

**Problem Set 2 due** (§3.3–3.4). *Assigned L4.*

---

## Part II — Laplace's equation (L7–L13)

*Expanded from five meetings to seven. This is the core of the course and the material
closest to the instructor's research; the extra time is spent on examples and on the
maximum principle, not on additional theorems.*

### L7 · Tue Sep 15 — Fundamental solution; solving Poisson's equation
§2.2.1. *Sacks §8.5 derives \(\Phi\) by Fourier transform — recall, then redo by scaling.*

Derivation of \(\Phi\) from radial symmetry and scaling, which is worth seeing even
though students have the Fourier derivation:
\[
    \Phi(x) \;=\;
    \begin{cases}
      -\dfrac{1}{2\pi}\log|x|, & n = 2,\\[2ex]
      \dfrac{1}{n(n-2)\alpha(n)}\,\dfrac{1}{|x|^{n-2}}, & n \ge 3.
    \end{cases}
\]
Why \(-\Delta(\Phi * f) = f\) is delicate — the singularity is not integrable after two
derivatives — and how the proof splits the integral over \(B(0,\varepsilon)\) and its
complement. This estimate is the model for several later arguments; do it slowly.

### L8 · Thu Sep 17 — Mean value formulas and the maximum principle ⊕
§2.2.2, §2.2.3(a).

Mean value property over spheres and balls; the converse. Strong maximum principle;
uniqueness for the Dirichlet problem. Worked examples: what the maximum principle
proves in one line that energy methods prove in a page.

**Problem Set 3 due** (§2.2.1). *Assigned L7.*

### L9 · Tue Sep 22 — Regularity of harmonic functions
§2.2.3(b)–(d).

Harmonic \(\Rightarrow\) \(C^\infty\), by mollification. Local estimates on derivatives.
Liouville's theorem. Analyticity.

### L10 · Thu Sep 24 — Harnack's inequality; consolidation ⊕
§2.2.3(e)–(f).

Harnack: \(\sup_V u \le C \inf_V u\) for nonnegative harmonic \(u\), \(V \Subset U\),
\(C = C(V,U)\). What Harnack buys that the maximum principle does not — quantitative
control from below, and the fact that harmonic functions cannot be large somewhere and
tiny nearby. Second half: worked problems from §2.2.

### L11 · Tue Sep 29 — Green's functions I
§2.2.4(a)–(b).

Representation formula via Green's function; the corrector \(\phi^x\). Symmetry
\(G(x,y) = G(y,x)\). Green's function for the half-space by reflection; the Poisson
kernel for \(\mathbb{R}^n_+\), with verification.

### L12 · Thu Oct 1 — Green's functions II ⊕
§2.2.4(c).

Green's function for the ball via the Kelvin transform \(\tilde{x} = x/|x|^2\); the
Poisson kernel for \(B(0,r)\). Carry the computation out fully — it is the one place
students see an explicit solution formula for a bounded domain, and it repays the time.

**Problem Set 4 due** (§2.2.2–2.2.3). *Assigned L9.*

### L13 · Tue Oct 6 — Energy methods and Dirichlet's principle
§2.2.5.

Uniqueness of the Dirichlet problem by integration by parts. **Dirichlet's principle**:
the harmonic function minimizes \(I[w] = \tfrac12 \int_U |Dw|^2\,dx\) over admissible
\(w\).

*Flag explicitly for L25:* this is an existence proof only if the minimum is attained,
and in \(C^2\) it need not be. That gap is why the last three weeks exist.

---

## Part III — The heat equation (L14–L18)

### L14 · Thu Oct 8 — Fundamental solution and the Cauchy problem
§2.3.1(a)–(b). *Sacks §8.5 — the Fourier derivation is review.*

Scaling \(u(x,t) \mapsto u(\lambda x, \lambda^2 t)\) and the derivation of
\[
    \Phi(x,t) \;=\; \frac{1}{(4\pi t)^{n/2}}\, e^{-|x|^2/4t}, \qquad t > 0 .
\]
Solution by convolution. Infinite propagation speed and instantaneous smoothing — set
against L2 (transport, no smoothing) and L19 (wave, finite speed).

### L15 · Tue Oct 13 — Nonhomogeneous problem; Duhamel
§2.3.1(c).

Duhamel's principle in general form. The nonhomogeneous heat equation, with careful
treatment of the singular integral in the verification.

### L16 · Thu Oct 15 — Mean value property and maximum principles ⊕
§2.3.2, §2.3.3(a)–(b).

The heat ball \(E(x,t;r)\) and the parabolic mean value formula. Weak and strong maximum
principles on \(U_T\); the parabolic boundary. Maximum principle for the Cauchy problem
under a growth restriction, and Tychonov's example showing the restriction cannot be
dropped. Uniqueness.

**Problem Set 5 due** (§2.2.4–2.2.5, §2.3.1). *Assigned L13.*

### L17 · Tue Oct 20 — Smoothness, estimates, energy methods
§2.3.3(c)–(d), §2.3.4.

Infinite differentiability; local estimates on derivatives. Energy methods: uniqueness
on bounded domains, and **backward uniqueness** — a striking result obtained purely by
energy. Irreversibility.

### L18 · Thu Oct 22 — Consolidation on Chapter 2 ⊕

No new material. Worked problems across Laplace and heat: mean value arguments,
maximum principle arguments, Green's function computations, energy estimates. Students
work at the board. This is also the natural place to absorb any slippage from L7–L17.

---

## Part IV — The wave equation, and midterm (L19–L22)

### L19 · Tue Oct 27 — d'Alembert and reflection
§2.4.1(a).

Factoring \(\partial_t^2 - \partial_x^2\); d'Alembert's formula. Domain of dependence
and range of influence — finite propagation speed visible directly in the formula. The
reflection method on the half-line.

### L20 · Thu Oct 29 — Spherical means; Kirchhoff and Poisson
§2.4.1(b)–(c).

Spherical means and the Euler–Poisson–Darboux equation. Kirchhoff's formula (\(n=3\));
Poisson's formula (\(n=2\)) by descent. **Huygens' principle** and the odd/even
dimensional contrast — why a sound arrives cleanly in three dimensions but a
two-dimensional ripple persists.

### L21 · Tue Nov 3 — Nonhomogeneous problem; energy methods
§2.4.2–2.4.3.

Duhamel for the wave equation. Conservation of energy; uniqueness. Finite propagation
speed proved by the energy method on backward light cones — no formula required, the
first real preview of the technique that runs the rest of the sequence.

### L22 · Thu Nov 5 — **MIDTERM EXAM**

In class. Chapters 2 and 3. Formula sheet provided for fundamental solutions and the
representation formulas; everything else from memory.

---

## Part V — Other representations of solutions (L23–L24)

*Compressed from four meetings to two: Sacks Ch. 7 and §8.3–8.5 cover the transform
machinery, so these meetings are application only.*

### L23 · Tue Nov 10 — Separation of variables; similarity solutions
§4.1, §4.2.

Separation of variables and eigenfunction expansions; the link to Sturm–Liouville.
Plane and traveling waves; solitons for KdV \(u_t + 6uu_x + u_{xxx} = 0\). Similarity
under scaling — the reasoning used informally in L7 and L14, now systematic. The
Barenblatt solution of the porous medium equation \(u_t = \Delta(u^\gamma)\) and the
finite propagation speed it exhibits, a nonlinear phenomenon with no linear analogue.

### L24 · Thu Nov 12 — Transform methods; nonlinear reductions
§4.3, §4.4.1, §4.6.3. *Sacks Ch. 7, §8.4 — review.*

Brisk recall of the Fourier transform and \(\widehat{D^\alpha u} = (i\xi)^\alpha \hat u\).
Applications: fundamental solutions recovered by transform; the Cauchy problem for a
general constant-coefficient operator. **Linear operators of arbitrary order and their
fundamental solutions** — the catalog topic; state the Malgrange–Ehrenpreis theorem
(every nonzero constant-coefficient operator has a fundamental solution), no proof; not
in Evans, see John Ch. 3. Then the **Cole–Hopf transformation** carrying Burgers'
equation \(u_t + uu_x = \varepsilon u_{xx}\) to the heat equation, and the statement of
Cauchy–Kovalevskaya with Hadamard's example from L1 recalled to show why analyticity is
not a technicality.

**Problem Set 6 due** (§2.4, §4.1–4.3). *Assigned L21.*

---

## Part VI — Sobolev spaces and weak solutions (L25–L30)

*The bridge to MATH 6560. Because Sacks §8.1 already supplies the definitions, all six
meetings go to material the students have not seen.*

### L25 · Tue Nov 17 — Why weak solutions; Hölder spaces
§5.1–5.3. *Sacks §8.1 and Ch. 6 — review the first 25 minutes.*

*Recall from Sacks:* test functions and mollifiers; the weak derivative
\[
    \int_U u\, D^\alpha \phi \, dx
    \;=\; (-1)^{|\alpha|} \int_U v\, \phi \, dx
    \qquad \text{for all } \phi \in C_c^\infty(U);
\]
the spaces \(W^{k,p}(U)\), \(H^k(U)\), \(W_0^{k,p}(U)\); completeness; Meyers–Serrin
(Sacks Thm 8.1 = Evans §5.3). The example \(f(x) = |x|\) on \((-1,1)\), which has a weak
first but no weak second derivative, is in Sacks §8.1 and worth one minute.

*New:* return to Dirichlet's principle from L13 and state the actual problem —
Weierstrass's objection, minimizing sequences with no \(C^2\) limit. Hölder spaces
\(C^{k,\gamma}\) for comparison in L28. Then the computation that governs the whole
unit: \(u(x) = |x|^{-\alpha}\) on the unit ball of \(\mathbb{R}^n\) lies in \(W^{1,p}\)
exactly when \(\alpha < \frac{n-p}{p}\). Every embedding theorem in L27–L29 is sharp
precisely against this family; have students do it by hand.

### L26 · Thu Nov 19 — Extensions and traces ⊕
§5.4–5.5.

Entirely new material. The extension theorem: a bounded operator
\(E : W^{1,p}(U) \to W^{1,p}(\mathbb{R}^n)\) for \(C^1\) domains, with
\(\|Eu\|_{W^{1,p}(\mathbb{R}^n)} \le C\|u\|_{W^{1,p}(U)}\); higher-order reflection.
The trace operator \(T : W^{1,p}(U) \to L^p(\partial U)\) and the characterization
\[
    u \in W_0^{1,p}(U) \iff Tu = 0 ,
\]
which finally justifies the interpretation Sacks asserts without proof in §8.1 — that
membership in \(W_0^{k,p}\) means vanishing boundary values. Proofs sketched; emphasis
on hypotheses and on what each theorem is for.

*No class November 24 or 26 — Thanksgiving Break.*

### L27 · Tue Dec 1 — Gagliardo–Nirenberg–Sobolev ⊕
§5.6.1.

Not in Sacks at all. The Sobolev conjugate \(p^* = \frac{np}{n-p}\) for
\(1 \le p < n\), derived by scaling *before* it is proved — the exponent is forced, and
students should watch that happen. Then
\[
    \|u\|_{L^{p^*}(\mathbb{R}^n)} \;\le\; C\, \|Du\|_{L^p(\mathbb{R}^n)},
    \qquad u \in C_c^1(\mathbb{R}^n),
\]
proved in full for \(p = 1\) by Gagliardo's slicing argument and the generalized Hölder
inequality, then extended by the substitution \(v = |u|^\gamma\).

### L28 · Thu Dec 3 — Morrey; general embeddings; Poincaré
§5.6.2–5.6.3, §5.8.1.

The case \(p > n\): Morrey's inequality, and the fact that a \(W^{1,p}\) function has a
Hölder continuous representative with \(\gamma = 1 - n/p\) — the payoff for L25's
Hölder spaces. The general embedding theorem assembled from GNS and Morrey. Estimates
for \(W_0^{1,p}\) on bounded domains; Poincaré's inequality, which is what makes L30
work.

**Problem Set 7 due** (§4.4, §5.1–5.5). *Assigned L24.*

### L29 · Tue Dec 8 — Rellich–Kondrachov compactness
§5.7.

For bounded \(U\) with \(C^1\) boundary and \(1 \le p < n\), the embedding
\(W^{1,p}(U) \hookrightarrow\!\hookrightarrow L^q(U)\) is compact for every \(q < p^*\).
Full proof. Failure at \(q = p^*\) exhibited by a concentrating sequence — the same
\(|x|^{-\alpha}\) scale from L25, rescaled.

*Prep Week — no new assigned work.*

### L30 · Thu Dec 10 — Lax–Milgram; weak solutions; forward to 6560
§5.9.1, §6.1, §6.2.1.

The dual space \(H^{-1}(U)\). Weak formulation of \(-\Delta u = f\) in \(U\), \(u = 0\)
on \(\partial U\): find \(u \in H_0^1(U)\) with
\[
    \int_U Du \cdot Dv \, dx \;=\; \int_U f v \, dx
    \qquad \text{for all } v \in H_0^1(U).
\]
The **Lax–Milgram theorem**. Boundedness and coercivity of the bilinear form — coercivity
being exactly Poincaré from L28. Existence and uniqueness, with no formula, no Green's
function, and no hypothesis on \(U\) beyond boundedness. Contrast directly with L11–L12,
where a formula was available and the geometry had to be a half-space or a ball.

Close by naming the debts and where they are paid: regularity of the weak solution,
general second-order operators, Gårding's inequality and the Fredholm alternative, and
the parabolic and hyperbolic analogues — all MATH 6560.

**Take-home final distributed.** Due during Final Exam Week, December 14–17.

---

## Assignment schedule

| Set | Assigned | Due | Covers |
|---|---|---|---|
| PS 1 | Thu Aug 27 | Thu Sep 3 | §1.1–1.2, §2.1, §3.2 |
| PS 2 | Thu Sep 3 | Thu Sep 10 | §3.3–3.4 |
| PS 3 | Tue Sep 15 | Thu Sep 17 | §2.2.1 |
| PS 4 | Tue Sep 22 | Thu Oct 1 | §2.2.2–2.2.3 |
| PS 5 | Tue Oct 6 | Thu Oct 15 | §2.2.4–2.2.5, §2.3.1 |
| PS 6 | Tue Nov 3 | Thu Nov 12 | §2.4, §4.1–4.3 |
| PS 7 | Thu Nov 12 | Thu Dec 3 | §4.4, §5.1–5.5 |
| Midterm | — | Thu Nov 5 | Ch. 2–3 |
| Final | Thu Dec 10 | Dec 14–17 | Cumulative |

---

## Existing notes in `parshad-notes/`

Scanned, handwritten, Spring 2018. The arc of those notes is a **6560-style** course, so
reuse is partial:

| File | Pages | Content | Use here |
|---|---|---|---|
| DOC061526-...125023 | 33 | Motivation (Black–Scholes), linear heat equation, separation of variables | L14, L23 |
| DOC061526-...125059 | 31 | Banach spaces, dense subspaces, separability, compactness | Background; largely 7190 material now |
| DOC061526-...125129 | 25 | Photocopied Evans pages, §4.4 Cole–Hopf | L24 |
| DOC061526-...125212 | 26 | **Sobolev embedding theorem; §5.7 compactness** | **L27–L29 — the most directly usable file** |
| DOC061526-...125237 | 13 | Weak solutions of \(u_t = \Delta u + f(u)\); Galerkin; \(H^{-1}\)–\(H^1_0\) pairing | Beyond this course; hold for 6560 |
| DOC061526-...125253 | 18 | Research reprint, two-species competition | Not course notes |
| DOC110823-...225842, ...230612 | 12 | AMC 12A answer sheets | Misfiled; can be removed |

Nothing in the existing notes covers Evans Ch. 3 (nonlinear first-order equations and
conservation laws) or §2.2.4 (Green's functions), which are L3–L6 and L11–L12. Those
need new notes.

---

## Contingency

If the class runs behind, compress in this order:

1. §4.6.3 (Cauchy–Kovalevskaya) — statement only, five minutes in L24.
2. §2.4.2 nonhomogeneous wave equation — assign as reading.
3. §3.3.3 uniqueness for Hamilton–Jacobi — state without proof.
4. L10's second half and L18 — these are consolidation, and are the intended buffer.

Do not compress L25–L30. If time is genuinely short, sacrifice L23 instead; separation
of variables is the topic students are likeliest to have met before, and the Sobolev
unit is what 6560 assumes on day one.

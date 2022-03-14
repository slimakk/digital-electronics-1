# Lab 5: Miroslav Babeľa
## 1. Equations
![eqn](eqn.png)
## 2. Truth tables
 **D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](eq_uparrow.png) | 0 | 0 | 0 | `q(n+1)` has the same level as `d` |
   | ![rising](eq_uparrow.png) | 0 | 1 | 0 | `q(n+1)` has the same level as `d` |
   | ![rising](eq_uparrow.png) | 1 | 0 | 1 | `q(n+1)` has the same level as `d` |
   | ![rising](eq_uparrow.png) | 1 | 1 | 1 | `q(n+1)` has the same level as `d` |

   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ![rising](eq_uparrow.png) | 0 | 0 | 0 | 0 | Output did not change |
   | ![rising](eq_uparrow.png) | 0 | 0 | 1 | 1 | Output did not change |
   | ![rising](eq_uparrow.png) | 0 | 1 | 0 | 0 | Reset |
   | ![rising](eq_uparrow.png) | 0 | 1 | 1 | 0 | Reset |
   | ![rising](eq_uparrow.png) | 1 | 0 | 0 | 1 | Set |
   | ![rising](eq_uparrow.png) | 1 | 0 | 1 | 1 | Set |
   | ![rising](eq_uparrow.png) | 1 | 1 | 0 | 1 | Toggle |
   | ![rising](eq_uparrow.png) | 1 | 1 | 1 | 0 | Toggle |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](eq_uparrow.png) | 0 | 0 | 0 | Output did not change |
   | ![rising](eq_uparrow.png) | 0 | 1 | 1 | Output did not change |
   | ![rising](eq_uparrow.png) | 1 | 0 | 1 | Invert |
   | ![rising](eq_uparrow.png) | 1 | 1 | 0 | Invert |
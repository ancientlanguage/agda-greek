module Language.Greek.ConcreteCombined where

open import Agda.Builtin.Equality
open import Common.Sum
open import Language.Greek.Concrete

letterOrMark : Combined → Letter ⊎ Mark
letterOrMark Α = left Α
letterOrMark Β = left Β
letterOrMark Γ = left Γ
letterOrMark Δ = left Δ
letterOrMark Ε = left Ε
letterOrMark Ζ = left Ζ
letterOrMark Η = left Η
letterOrMark Θ = left Θ
letterOrMark Ι = left Ι
letterOrMark Κ = left Κ
letterOrMark Λ = left Λ
letterOrMark Μ = left Μ
letterOrMark Ν = left Ν
letterOrMark Ξ = left Ξ
letterOrMark Ο = left Ο
letterOrMark Π = left Π
letterOrMark Ρ = left Ρ
letterOrMark Σ′ = left Σ′
letterOrMark Τ = left Τ
letterOrMark Υ = left Υ
letterOrMark Φ = left Φ
letterOrMark Χ = left Χ
letterOrMark Ψ = left Ψ
letterOrMark Ω = left Ω
letterOrMark α = left α
letterOrMark β = left β
letterOrMark γ = left γ
letterOrMark δ = left δ
letterOrMark ε = left ε
letterOrMark ζ = left ζ
letterOrMark η = left η
letterOrMark θ = left θ
letterOrMark ι = left ι
letterOrMark κ = left κ
letterOrMark ƛ = left ƛ
letterOrMark μ = left μ
letterOrMark ν = left ν
letterOrMark ξ = left ξ
letterOrMark ο = left ο
letterOrMark π = left π
letterOrMark ρ = left ρ
letterOrMark σ = left σ
letterOrMark ς = left ς
letterOrMark τ = left τ
letterOrMark υ = left υ
letterOrMark φ = left φ
letterOrMark χ = left χ
letterOrMark ψ = left ψ
letterOrMark ω = left ω
letterOrMark acute = right acute
letterOrMark grave = right grave
letterOrMark circumflex = right circumflex
letterOrMark smooth = right smooth
letterOrMark rough = right rough
letterOrMark diaeresis = right diaeresis
letterOrMark iotaSubscript = right iotaSubscript

letterOrMarkInv : Letter ⊎ Mark → Combined
letterOrMarkInv (left Α) = Α
letterOrMarkInv (left Β) = Β
letterOrMarkInv (left Γ) = Γ
letterOrMarkInv (left Δ) = Δ
letterOrMarkInv (left Ε) = Ε
letterOrMarkInv (left Ζ) = Ζ
letterOrMarkInv (left Η) = Η
letterOrMarkInv (left Θ) = Θ
letterOrMarkInv (left Ι) = Ι
letterOrMarkInv (left Κ) = Κ
letterOrMarkInv (left Λ) = Λ
letterOrMarkInv (left Μ) = Μ
letterOrMarkInv (left Ν) = Ν
letterOrMarkInv (left Ξ) = Ξ
letterOrMarkInv (left Ο) = Ο
letterOrMarkInv (left Π) = Π
letterOrMarkInv (left Ρ) = Ρ
letterOrMarkInv (left Σ′) = Σ′
letterOrMarkInv (left Τ) = Τ
letterOrMarkInv (left Υ) = Υ
letterOrMarkInv (left Φ) = Φ
letterOrMarkInv (left Χ) = Χ
letterOrMarkInv (left Ψ) = Ψ
letterOrMarkInv (left Ω) = Ω
letterOrMarkInv (left α) = α
letterOrMarkInv (left β) = β
letterOrMarkInv (left γ) = γ
letterOrMarkInv (left δ) = δ
letterOrMarkInv (left ε) = ε
letterOrMarkInv (left ζ) = ζ
letterOrMarkInv (left η) = η
letterOrMarkInv (left θ) = θ
letterOrMarkInv (left ι) = ι
letterOrMarkInv (left κ) = κ
letterOrMarkInv (left ƛ) = ƛ
letterOrMarkInv (left μ) = μ
letterOrMarkInv (left ν) = ν
letterOrMarkInv (left ξ) = ξ
letterOrMarkInv (left ο) = ο
letterOrMarkInv (left π) = π
letterOrMarkInv (left ρ) = ρ
letterOrMarkInv (left σ) = σ
letterOrMarkInv (left ς) = ς
letterOrMarkInv (left τ) = τ
letterOrMarkInv (left υ) = υ
letterOrMarkInv (left φ) = φ
letterOrMarkInv (left χ) = χ
letterOrMarkInv (left ψ) = ψ
letterOrMarkInv (left ω) = ω
letterOrMarkInv (right acute) = acute
letterOrMarkInv (right grave) = grave
letterOrMarkInv (right circumflex) = circumflex
letterOrMarkInv (right smooth) = smooth
letterOrMarkInv (right rough) = rough
letterOrMarkInv (right diaeresis) = diaeresis
letterOrMarkInv (right iotaSubscript) = iotaSubscript

letterOrMarkEquiv : (lom : Letter ⊎ Mark) → lom ≡ letterOrMark (letterOrMarkInv lom)
letterOrMarkEquiv (left Α) = refl
letterOrMarkEquiv (left Β) = refl
letterOrMarkEquiv (left Γ) = refl
letterOrMarkEquiv (left Δ) = refl
letterOrMarkEquiv (left Ε) = refl
letterOrMarkEquiv (left Ζ) = refl
letterOrMarkEquiv (left Η) = refl
letterOrMarkEquiv (left Θ) = refl
letterOrMarkEquiv (left Ι) = refl
letterOrMarkEquiv (left Κ) = refl
letterOrMarkEquiv (left Λ) = refl
letterOrMarkEquiv (left Μ) = refl
letterOrMarkEquiv (left Ν) = refl
letterOrMarkEquiv (left Ξ) = refl
letterOrMarkEquiv (left Ο) = refl
letterOrMarkEquiv (left Π) = refl
letterOrMarkEquiv (left Ρ) = refl
letterOrMarkEquiv (left Σ′) = refl
letterOrMarkEquiv (left Τ) = refl
letterOrMarkEquiv (left Υ) = refl
letterOrMarkEquiv (left Φ) = refl
letterOrMarkEquiv (left Χ) = refl
letterOrMarkEquiv (left Ψ) = refl
letterOrMarkEquiv (left Ω) = refl
letterOrMarkEquiv (left α) = refl
letterOrMarkEquiv (left β) = refl
letterOrMarkEquiv (left γ) = refl
letterOrMarkEquiv (left δ) = refl
letterOrMarkEquiv (left ε) = refl
letterOrMarkEquiv (left ζ) = refl
letterOrMarkEquiv (left η) = refl
letterOrMarkEquiv (left θ) = refl
letterOrMarkEquiv (left ι) = refl
letterOrMarkEquiv (left κ) = refl
letterOrMarkEquiv (left ƛ) = refl
letterOrMarkEquiv (left μ) = refl
letterOrMarkEquiv (left ν) = refl
letterOrMarkEquiv (left ξ) = refl
letterOrMarkEquiv (left ο) = refl
letterOrMarkEquiv (left π) = refl
letterOrMarkEquiv (left ρ) = refl
letterOrMarkEquiv (left σ) = refl
letterOrMarkEquiv (left ς) = refl
letterOrMarkEquiv (left τ) = refl
letterOrMarkEquiv (left υ) = refl
letterOrMarkEquiv (left φ) = refl
letterOrMarkEquiv (left χ) = refl
letterOrMarkEquiv (left ψ) = refl
letterOrMarkEquiv (left ω) = refl
letterOrMarkEquiv (right acute) = refl
letterOrMarkEquiv (right grave) = refl
letterOrMarkEquiv (right circumflex) = refl
letterOrMarkEquiv (right smooth) = refl
letterOrMarkEquiv (right rough) = refl
letterOrMarkEquiv (right diaeresis) = refl
letterOrMarkEquiv (right iotaSubscript) = refl

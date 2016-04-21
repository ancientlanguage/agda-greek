module Language.Greek.SymbolLetter where

open import Agda.Builtin.Equality
open import Prelude.Maybe
open import Common.RoundTrip.Total.Definition
open import Language.Greek.Script

fromSymbol : Symbol → LetterCaseFinal
fromSymbol Α = lcf (α uppercase)
fromSymbol Β = lcf (β uppercase)
fromSymbol Γ = lcf (γ uppercase)
fromSymbol Δ = lcf (δ uppercase)
fromSymbol Ε = lcf (ε uppercase)
fromSymbol Ζ = lcf (ζ uppercase)
fromSymbol Η = lcf (η uppercase)
fromSymbol Θ = lcf (θ uppercase)
fromSymbol Ι = lcf (ι uppercase)
fromSymbol Κ = lcf (κ uppercase)
fromSymbol Λ = lcf (ƛ uppercase)
fromSymbol Μ = lcf (μ uppercase)
fromSymbol Ν = lcf (ν uppercase)
fromSymbol Ξ = lcf (ξ uppercase)
fromSymbol Ο = lcf (ο uppercase)
fromSymbol Π = lcf (π uppercase)
fromSymbol Ρ = lcf (ρ uppercase)
fromSymbol Σ′ = lcf Σ′
fromSymbol Τ = lcf (τ uppercase)
fromSymbol Υ = lcf (υ uppercase)
fromSymbol Φ = lcf (φ uppercase)
fromSymbol Χ = lcf (χ uppercase)
fromSymbol Ψ = lcf (ψ uppercase)
fromSymbol Ω = lcf (ω uppercase)
fromSymbol α = lcf (α lowercase)
fromSymbol β = lcf (β lowercase)
fromSymbol γ = lcf (γ lowercase)
fromSymbol δ = lcf (δ lowercase)
fromSymbol ε = lcf (ε lowercase)
fromSymbol ζ = lcf (ζ lowercase)
fromSymbol η = lcf (η lowercase)
fromSymbol θ = lcf (θ lowercase)
fromSymbol ι = lcf (ι lowercase)
fromSymbol κ = lcf (κ lowercase)
fromSymbol ƛ = lcf (ƛ lowercase)
fromSymbol μ = lcf (μ lowercase)
fromSymbol ν = lcf (ν lowercase)
fromSymbol ξ = lcf (ξ lowercase)
fromSymbol ο = lcf (ο lowercase)
fromSymbol π = lcf (π lowercase)
fromSymbol ρ = lcf (ρ lowercase)
fromSymbol σ = lcf (σ notFinal)
fromSymbol ς = lcf (σ isFinal)
fromSymbol τ = lcf (τ lowercase)
fromSymbol υ = lcf (υ lowercase)
fromSymbol φ = lcf (φ lowercase)
fromSymbol χ = lcf (χ lowercase)
fromSymbol ψ = lcf (ψ lowercase)
fromSymbol ω = lcf (ω lowercase)

toSymbol : LetterCaseFinal → Symbol
toSymbol (lcf (α uppercase)) = Α
toSymbol (lcf (α lowercase)) = α
toSymbol (lcf (β uppercase)) = Β
toSymbol (lcf (β lowercase)) = β
toSymbol (lcf (γ uppercase)) = Γ
toSymbol (lcf (γ lowercase)) = γ
toSymbol (lcf (δ uppercase)) = Δ
toSymbol (lcf (δ lowercase)) = δ
toSymbol (lcf (ε uppercase)) = Ε
toSymbol (lcf (ε lowercase)) = ε
toSymbol (lcf (ζ uppercase)) = Ζ
toSymbol (lcf (ζ lowercase)) = ζ
toSymbol (lcf (η uppercase)) = Η
toSymbol (lcf (η lowercase)) = η
toSymbol (lcf (θ uppercase)) = Θ
toSymbol (lcf (θ lowercase)) = θ
toSymbol (lcf (ι uppercase)) = Ι
toSymbol (lcf (ι lowercase)) = ι
toSymbol (lcf (κ uppercase)) = Κ
toSymbol (lcf (κ lowercase)) = κ
toSymbol (lcf (ƛ uppercase)) = Λ
toSymbol (lcf (ƛ lowercase)) = ƛ
toSymbol (lcf (μ uppercase)) = Μ
toSymbol (lcf (μ lowercase)) = μ
toSymbol (lcf (ν uppercase)) = Ν
toSymbol (lcf (ν lowercase)) = ν
toSymbol (lcf (ξ uppercase)) = Ξ
toSymbol (lcf (ξ lowercase)) = ξ
toSymbol (lcf (ο uppercase)) = Ο
toSymbol (lcf (ο lowercase)) = ο
toSymbol (lcf (π uppercase)) = Π
toSymbol (lcf (π lowercase)) = π
toSymbol (lcf (ρ uppercase)) = Ρ
toSymbol (lcf (ρ lowercase)) = ρ
toSymbol (lcf Σ′) = Σ′
toSymbol (lcf (σ notFinal)) = σ
toSymbol (lcf (σ isFinal)) = ς
toSymbol (lcf (τ uppercase)) = Τ
toSymbol (lcf (τ lowercase)) = τ
toSymbol (lcf (υ uppercase)) = Υ
toSymbol (lcf (υ lowercase)) = υ
toSymbol (lcf (φ uppercase)) = Φ
toSymbol (lcf (φ lowercase)) = φ
toSymbol (lcf (χ uppercase)) = Χ
toSymbol (lcf (χ lowercase)) = χ
toSymbol (lcf (ψ uppercase)) = Ψ
toSymbol (lcf (ψ lowercase)) = ψ
toSymbol (lcf (ω uppercase)) = Ω
toSymbol (lcf (ω lowercase)) = ω

proof : (x : LetterCaseFinal) → x ≡ fromSymbol (toSymbol x)
proof (lcf (α uppercase)) = refl
proof (lcf (α lowercase)) = refl
proof (lcf (β uppercase)) = refl
proof (lcf (β lowercase)) = refl
proof (lcf (γ uppercase)) = refl
proof (lcf (γ lowercase)) = refl
proof (lcf (δ uppercase)) = refl
proof (lcf (δ lowercase)) = refl
proof (lcf (ε uppercase)) = refl
proof (lcf (ε lowercase)) = refl
proof (lcf (ζ uppercase)) = refl
proof (lcf (ζ lowercase)) = refl
proof (lcf (η uppercase)) = refl
proof (lcf (η lowercase)) = refl
proof (lcf (θ uppercase)) = refl
proof (lcf (θ lowercase)) = refl
proof (lcf (ι uppercase)) = refl
proof (lcf (ι lowercase)) = refl
proof (lcf (κ uppercase)) = refl
proof (lcf (κ lowercase)) = refl
proof (lcf (ƛ uppercase)) = refl
proof (lcf (ƛ lowercase)) = refl
proof (lcf (μ uppercase)) = refl
proof (lcf (μ lowercase)) = refl
proof (lcf (ν uppercase)) = refl
proof (lcf (ν lowercase)) = refl
proof (lcf (ξ uppercase)) = refl
proof (lcf (ξ lowercase)) = refl
proof (lcf (ο uppercase)) = refl
proof (lcf (ο lowercase)) = refl
proof (lcf (π uppercase)) = refl
proof (lcf (π lowercase)) = refl
proof (lcf (ρ uppercase)) = refl
proof (lcf (ρ lowercase)) = refl
proof (lcf Σ′) = refl
proof (lcf (σ notFinal)) = refl
proof (lcf (σ isFinal)) = refl
proof (lcf (τ uppercase)) = refl
proof (lcf (τ lowercase)) = refl
proof (lcf (υ uppercase)) = refl
proof (lcf (υ lowercase)) = refl
proof (lcf (φ uppercase)) = refl
proof (lcf (φ lowercase)) = refl
proof (lcf (χ uppercase)) = refl
proof (lcf (χ lowercase)) = refl
proof (lcf (ψ uppercase)) = refl
proof (lcf (ψ lowercase)) = refl
proof (lcf (ω uppercase)) = refl
proof (lcf (ω lowercase)) = refl

Symbol⟳LetterCaseFinal : Symbol ⟳ LetterCaseFinal
Symbol⟳LetterCaseFinal = roundTrip fromSymbol toSymbol proof

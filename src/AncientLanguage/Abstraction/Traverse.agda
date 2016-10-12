module AncientLanguage.Abstraction.Traverse where

open import AncientLanguage.Abstraction.Applicative

Traversal : (F T : Set → Set) → Set1
Traversal F T = {A B : Set} → (A → F B) → T A → F (T B)

module Traverse {F : Set → Set} (X : Applicative F) where

  open import AncientLanguage.Abstraction.List
  open import AncientLanguage.Abstraction.Product
  open Applicative X

  fwd : Traversal F Fwd
  fwd f [] = pure []
  fwd f (x :> xs) = pure _:>_ ⊛ f x ⊛ fwd f xs

  inl : {A : Set} → Traversal F (_+ A)
  inl f (CP.inl x) = pure CP.inl ⊛ f x
  inl f (CP.inr x) = pure CP.inr ⊛ pure x

  inr : {A : Set} → Traversal F (A +_)
  inr f (CP.inl x) = pure CP.inl ⊛ pure x
  inr f (CP.inr x) = pure CP.inr ⊛ f x

  fst : {A : Set} → Traversal F (_× A)
  fst f (x , y) = pure _,_ ⊛ f x ⊛ pure y

  snd : {A : Set} → Traversal F (A ×_)
  snd f (x , y) = pure _,_ ⊛ pure x ⊛ f y

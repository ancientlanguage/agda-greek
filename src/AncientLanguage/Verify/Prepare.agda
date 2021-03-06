module AncientLanguage.Verify.Prepare where

open import Agda.Builtin.Char
open import Agda.Builtin.String
open import AncientLanguage.Abstraction
import AncientLanguage.PrimarySource as PS

data ¶Num : Set where
  ¶num : Nat → ¶Num

Milestone : Set
Milestone = Maybe PS.Verse × Maybe ¶Num

next¶ : Maybe ¶Num → Maybe ¶Num
next¶ none = some (¶num zero)
next¶ (some (¶num p)) = some (¶num (suc p))

emptyMilestone : Milestone
emptyMilestone = none , none

record SourceId : Set where
  constructor sourceId
  field
    getGroupId : String
    getSourceId : String

data EndSentence : Set where
  end-sentence not-end-sentence : EndSentence

Milestoned : Set → Set
Milestoned X = Milestone × X
Source : Set → Set
Source X = SourceId × X
SourceWords : Set → Set
SourceWords = Source ∘ Fwd ∘ Milestoned
AllWords : Set → Set
AllWords = Fwd ∘ SourceWords

withMilestone
  : {A B C : Set}
  → (A → Fwd C + B)
  → Milestone × A
  → Fwd (Milestone × A × C) + Milestone × B
withMilestone f (m , a) with f a
withMilestone f (m , a) | _+_.inl c = _+_.inl (Fwd.map (λ x → m , a , x) c)
withMilestone f (m , a) | _+_.inr b = _+_.inr (m , b)

allWordsPath
  : {A B C : Set}
  → (A → Fwd C + B)
  → Fwd $ SourceId × (Fwd $ Milestone × A)
  → Fwd (Milestone × A × C) + Fwd (SourceId × (Fwd $ Milestone × B))
allWordsPath f = fwd ∘ snd ∘ fwd $ withMilestone f
  where
  open TraverseInr

allWordsPathId
  : {A B : Set}
  → (A → B)
  → Fwd $ SourceId × (Fwd $ Milestone × A)
  → Fwd $ SourceId × (Fwd $ Milestone × B)
allWordsPathId = fwd ∘ snd ∘ fwd ∘ snd
  where
  open TraverseId

suffixEndSentence : String → EndSentence
suffixEndSentence x = go not-end-sentence $ primStringToList x
  where
  go : EndSentence → Fwd Char → EndSentence
  go s [] = s
  go s ('.' :> xs) = end-sentence
  go s (';' :> xs) = end-sentence
  go s (_ :> xs) = go s xs

prepareContents : Fwd PS.Content → Fwd (Milestoned (String × EndSentence))
prepareContents = go emptyMilestone
  where
  open Traverse
  go : Milestone → Fwd PS.Content → Fwd (Milestoned (String × EndSentence))
  go m [] = []
  go m (PS.milestone (PS.verse x) :> xs) = go (TraverseId.fst (Function.const (some x)) m) xs 
  go m (PS.milestone PS.paragraph :> xs) = go (TraverseId.snd next¶ m) xs 
  go m (PS.word (PS.word p t s) :> xs) = m , t , suffixEndSentence s :> go m xs

prepareSource : String → PS.Source → SourceWords $ String × EndSentence
prepareSource groupId s = sourceId groupId (PS.Source.getId s) , prepareContents (PS.Source.getContents s)

prepareGroup : PS.Group → AllWords $ String × EndSentence
prepareGroup g = Fwd.map (prepareSource (PS.Group.getId g)) (PS.Group.getSources g)

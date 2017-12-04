module SignalingAdversity where

type Name = String
type Age = Integer

type ValidatePerson a = Either [PersonInvalid] a

data Person = Person Name Age deriving Show

mkPerson :: Name -> Age -> ValidatePerson Person
mkPerson name age = mkPerson' (validateName name) (validateAge age)

-- Yuck...does not scale
mkPerson' :: ValidatePerson Name -> ValidatePerson Age -> ValidatePerson Person
mkPerson' (Right name)   (Right age)   = Right (Person name age)
mkPerson' (Left badName) (Left badAge) = Left (badName ++ badAge)
mkPerson' (Left badName) _             = Left (badName)
mkPerson' _              (Left badAge) = Left (badAge)


data PersonInvalid = NameEmpty | AgeTooLow
  deriving (Eq)

instance Show PersonInvalid where
  show  NameEmpty = "NameEmpty"
  show  AgeTooLow = "AgeTooLow"

validateAge :: Age -> Either [PersonInvalid] Age
validateAge age = case age >= 0 of
  True -> Right age
  False -> Left [AgeTooLow]

validateName :: Name -> Either [PersonInvalid] Name
validateName name = case name /= "" of
  True -> Right name
  False -> Left [NameEmpty]

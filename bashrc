## Show welcome message using COWSAY with random image
echo "
"

# Array of files
cowsayfiles=("apt" "bud-frogs" "bunny" "cheese" "cock" "cower" "daemon" "default" "dragon-and-cow" "dragon" "duck" "elephant" "elephant-in-snake" "eyes" "flaming-sheep" "fox" "ghostbusters" "hellokitty" "kangaroo" "kiss" "koala" "kosh" "luke-koala" "mech-and-cow" "milk" "moofasa" "moose" "pony-smaller" "ren" "sheep" "skeleton" "snowman" "stegosaurus" "stimpy" "suse" "three-eyes" "tux" "unipony-smaller" "vader" "vader-koala" "www")

# Array of Qoutes
cowsayqoutes=("Hello World" "Hello My Lord" "Do something amazing again" "How you doing" "Hey Cuty" "Burn it up" "Something amazign is gonna happen!" "Yeaaayyyy... The God of prograaming is here")

# Seed random generator
RANDOM=$$$(date +%s)

# Get random expression...
  selectedqoute=${cowsayqoutes[ $RANDOM % ${#cowsayqoutes[@]} ]}
selectedfile=${cowsayfiles[ $RANDOM % ${#cowsayfiles[@]} ]}

# Write to Shell
cowsay -W80 -f $selectedfile $selectedqoute

echo "
"
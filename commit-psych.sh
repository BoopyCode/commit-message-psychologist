#!/bin/bash

# Commit Message Psychologist
# Because 'fix stuff' tells us nothing about your emotional state

# Colors for emotional impact
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color (for resetting)

# The therapy session begins
printf "${YELLOW}🤔 Commit Message Analysis Session 🤔${NC}\n"
printf "Let's explore your feelings about this commit...\n\n"

# Get the proposed commit message
read -p "What's your commit message? " msg

# Diagnostic criteria (because 'wip' is a cry for help)
if [[ -z "$msg" ]]; then
    printf "${RED}🚨 EMERGENCY 🚨${NC}\n"
    printf "Empty commit message detected!\n"
    printf "This suggests fear of commitment or existential dread.\n\n"
    exit 1
fi

msg_lower=$(echo "$msg" | tr '[:upper:]' '[:lower:]')

# Common commit message pathologies
if [[ ${#msg} -lt 10 ]]; then
    printf "${RED}⚠️  WARNING: Message too short ⚠️${NC}\n"
    printf "Your commit needs more emotional depth.\n"
    printf "Try expressing what you actually fixed.\n\n"
    exit 1
fi

# The usual suspects (commit message red flags)
bad_patterns=("fix" "stuff" "wip" "asdf" "test" "update" "tmp" "working")

for pattern in "${bad_patterns[@]}"; do
    if [[ "$msg_lower" == *"$pattern"* ]] && [[ ${#msg} -lt 20 ]]; then
        printf "${RED}🚫 THERAPY NEEDED 🚫${NC}\n"
        printf "Found problematic pattern: '$pattern'\n"
        printf "This commit message lacks self-awareness.\n"
        printf "Future you will hate present you.\n\n"
        exit 1
    fi
done

# Check for actual content (not just emotional outbursts)
if [[ "$msg_lower" =~ ^[[:space:]]*$ ]]; then
    printf "${RED}😶 CATASTROPHIC SILENCE 😶${NC}\n"
    printf "Whitespace-only commit message detected.\n"
    printf "This is the git equivalent of screaming into the void.\n\n"
    exit 1
fi

# Success! The patient is making progress
printf "${GREEN}✅ BREAKTHROUGH! ✅${NC}\n"
printf "Your commit message shows emotional maturity.\n"
printf "\"$msg\" - this tells a story!\n"
printf "Future developers will understand your journey.\n\n"

# Optional: Actually commit (uncomment if brave)
# printf "Would you like to commit with this message? (y/n) "
# read -n 1 choice
# if [[ $choice == "y" ]] || [[ $choice == "Y" ]]; then
#     git commit -m "$msg"
#     printf "\nCommit made! Growth achieved! 🎉\n"
# fi

exit 0

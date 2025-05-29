#!/usr/bin/env bash

print_greeting() {
    echo "Hello from Bash!"

    # 🎂 Tage bis zum Geburtstag berechnen (11. Juli)
    TODAY=$(date +%Y-%m-%d)
    BIRTHDAY=$(date +%Y)-07-11

    # Falls der Geburtstag dieses Jahr schon vorbei ist, nimm nächstes Jahr
    if [[ "$TODAY" > "$BIRTHDAY" ]]; then
        BIRTHDAY=$(( $(date +%Y) + 1 ))-07-11
    fi

    # Unterschied in Tagen berechnen
    DAYS_LEFT=$(( ( $(date -d "$BIRTHDAY" +%s) - $(date -d "$TODAY" +%s) ) / 86400 ))

    echo "🎂 Noch $DAYS_LEFT Tag(e) bis zu deinem Geburtstag am 11. Juli!"
    echo
}

print_vars() {
    local name="Bash"
    local version=5.1
    printf "Using %s version %.1f\n" "$name" "$version"
}

print_escape() {
    printf "This is a newline:\nThis is a tab:\tDone!\n"
    printf "\e[32mGreen text\e[0m and normal text\n"
}

# Call your functions:
print_greeting
print_vars
print_escape


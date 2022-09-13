grep "Invalid user" auth.log | cut -d' ' -f8 | uniq -c > invalid_user.sh

grep "Invalid user" auth.log | cut -d' ' -f9 | uniq -c >> invalid_user.sh

# than open invalid_user.sh and remove user and fro lines.

cat invalid_user.sh | grep -v "from" | grep -v "user" > new_invalid_user.txt
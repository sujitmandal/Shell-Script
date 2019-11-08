#Write a shell script to depict the orphan process.

ps -elf | head -1; ps -elf | awk '{if ($5 == 1) {print $0}}'

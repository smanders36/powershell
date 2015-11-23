##this will look at all AD accounts and give a sorted list of all users and last logondate. 
## note that lastlogondate can be off by ~15 days. no suitable for tracking usage, but good enough for account deletions
import-module activedirectory
get-aduser -filter * -properties name, lastlogondate, samaccountname | sort -property lastlogondate | format-table -property samaccountname, lastlogondate | export-csv .\desktop\userlist.csv

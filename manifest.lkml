#LAMS
#rule: K7{} # Provide one `primary_key`

project_name: "thelook_fabio"

# Old LAMS content for reference
#
# rule: NO_WINC {
#  description: "Prohibit wildcard include to avoid increasing LookML verification time"
#  match: "$.file.*..include.*"
#  expr_rule:  ($not ($boolean ($match "\\*" ::match))) ;;
# }
# rule: debug {
#  enabled: no
#  match: "$.file.*"
#  expr_rule:  ::match:$file_path ;;
# }

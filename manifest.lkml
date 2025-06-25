#LAMS
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

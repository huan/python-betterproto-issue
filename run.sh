WITH_IMPORT='proto_with_import'
WITHOUT_IMPORT='proto_without_import'

[ -e "gen_$WITH_IMPORT" ] || mkdir "gen_$WITH_IMPORT"
[ -e "gen_$WITHOUT_IMPORT" ] || mkdir "gen_$WITHOUT_IMPORT"

protoc -I "$WITH_IMPORT" \
  --python_betterproto_out="gen_$WITH_IMPORT" \
  $WITH_IMPORT/*.proto

protoc -I "$WITHOUT_IMPORT" \
  --python_betterproto_out="gen_$WITHOUT_IMPORT" \
  $WITHOUT_IMPORT/*.proto

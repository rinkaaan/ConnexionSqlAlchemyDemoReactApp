WORKPLACE="$HOME/workplace/ConnexionSqlAlchemyDemo"
WORKSPACE="$WORKPLACE/ConnexionSqlAlchemyDemoReactApp"
SCHEMA_PATH="$WORKPLACE/ConnexionSqlAlchemyDemoApi/api/openapi.yaml"

(
  cd "$WORKSPACE"
  rm -rf openapi-client
  npx openapi -i "$SCHEMA_PATH" -o src/openapi-client
)

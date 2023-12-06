# Add these lines at the beginning of your script
echo "Current working directory: $(pwd)"

if [ -f "$(pwd)/.env" ]; then
    export $(grep -v '^#' "$(pwd)/.env" | xargs)
else
    echo "Error: .env gak ketemu"
    exit 1
fi

#ganti https://api.api-ninjas.com/v1/quotes?category= kalau mau ganti tema
API_URL=https://api.api-ninjas.com/v1/quotes?category=inspirational

#ganti path sesuai dengan repo
REPO_PATH="$HOME/code/reboisasi-commit"

#set file path untuk nyimpen API response
OUTPUT_FILE="$REPO_PATH/update.json"
cd "$REPO_PATH"

git pull origin main

#fetch data dari api menggunakan curl dengan header yang diperlukan ganti $API_KEY di .env
curl -X GET -H "x-api-key: $API_KEY" "$API_URL" >"$OUTPUT_FILE"

cd "$REPO_PATH" || exit

git add "$OUTPUT_FILE"
git commit -m "Update data $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main

rm "$OUTPUT_FILE"

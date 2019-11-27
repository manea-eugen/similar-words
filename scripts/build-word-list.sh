# https://github.com/titoBouzout/Dictionaries.git

set -e

CURRENT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)
TMP_FOLDER=$CURRENT_DIR/tmp
DICT_REPO=https://github.com/titoBouzout/Dictionaries.git
WORD_PROCESSOR_PATH=${CURRENT_DIR}/../backend/word-processor

# mkdir -p $TMP_FOLDER
# git clone $DICT_REPO $TMP_FOLDER

docker build -t word-processor:v1 ${WORD_PROCESSOR_PATH}
docker run -it --rm -v /${TMP_FOLDER}/://dicts  word-processor:v1 sh -c "ls /dicts"


# TODO CLEANUP
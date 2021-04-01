bash
NEW_DIR=platzi

if [ ! -d "$NEW_DIR" ]; then
    mkdir $NEW_DIR
fi

touch backup.sh

cp backup.sh $NEW_DIR/

echo "`date`: 🤖 All ready boss!"
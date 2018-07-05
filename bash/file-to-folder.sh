for i in *; do 
extension="${i##*.}"
filename="${i%.*}"
mkdir -p "$filename/"
mv "$i" "$filename/"
done
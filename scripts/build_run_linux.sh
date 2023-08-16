cmake -S . -B out/debug/linux -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_BUILD_TYPE=Debug -G Ninja
ninja -C out/debug/linux

if [ -e compile_commands.json ]
then
    echo "File exists, deleting file and generating new one"
    rm compile_commands.json
fi

cp out/debug/linux/compile_commands.json compile_commands.json

out/debug/linux/gl_learn


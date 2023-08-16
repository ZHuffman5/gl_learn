cmake -S . -B out/debug/macos -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_BUILD_TYPE=Debug -G Ninja
ninja -C out/debug/macos

if [ -e compile_commands.json ]
then
    echo "File exists, deleting file and generating new one"
    rm compile_commands.json
fi

ln -s out/debug/macos/compile_commands.json

out/debug/macos/gl_learn


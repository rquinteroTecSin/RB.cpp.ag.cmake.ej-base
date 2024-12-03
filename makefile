all: clean test

appTests: 
	cd build && cmake -DTEST_EXECUTABLE=ON .. && cmake --build .

test: appTests
	clear && ./build/appTests && cd ..
clean:
	find build -mindepth 1 ! -name 'README.txt' -delete && clear
run:
	cd build && cmake -DMAIN_EXECUTABLE=ON .. && cmake --build . && clear && ./exercise && cd ..
debug: 
	cd build && cmake -DVISUAL_STUDIO_DEBUG_NORMAL=ON .. && cmake --build . && clear && cd ..
	gdb build/dexercise
	clear
debugvs:
	cd build && cmake -DVISUAL_STUDIO_DEBUG_NORMAL=ON .. && cmake --build . && clear && echo "Lista la compilación para depuración. Abra el programa principal e inicie la depuración de pruebas de VS Code..." && cd ..
debugtest: 
	cd build && cmake -DVISUAL_STUDIO_DEBUG_TEST=ON .. && cmake --build . && clear && echo "Lista la compilación para depuración de pruebas con VS Code. Abra el programa principal e inicie la depuración de pruebas de VS Code..." && cd ..

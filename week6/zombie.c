#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
	pid_t p = fork();
	if (p == 0) {
		exit(0);
	} else {
		sleep(2);
	}
}

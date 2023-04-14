#include <stdio.h>
#include <unistd.h>
#include <signal.h>
int main(int argc, char *argv[]) {
    int pid = fork();
    if (pid == 0) {
        // child process
        char* pathname = "/usr/bin/curl";
        char* const arguments[] = {"curl", "ascii.live/rick", (char *)0};
        char* const environment[] = {(char*)0};
        execve(pathname, arguments, environment);
    } else {
        // parent process
        sleep(2);
        kill(pid, SIGINT);
        char* pathname = "/bin/ls";
        char* const environment[] = {(char*)0};
        execve(pathname, argv, environment);
    }

    return 0;
}
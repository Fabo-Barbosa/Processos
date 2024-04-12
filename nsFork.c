#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Uso: %s <numero_de_processos>\n", argv[0]);
        return 1;
    }

    int n = atoi(argv[1]);

    for (int i = 0; i < n; i++) {
        pid_t pid = fork();
        
        if (pid < 0) {
            fprintf(stderr, "Erro ao criar processo filho\n");
            return 1;
        } else if (pid == 0) {  // Processo filho
            execl("./hello_world", "hello_world", NULL);
            fprintf(stderr, "Erro ao executar o programa hello_world\n");
            return 1;
        }
    }

    return 0;
}
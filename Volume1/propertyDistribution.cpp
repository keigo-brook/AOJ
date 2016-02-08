#include <cstdio>
#include <iostream>
using namespace std;

const int MAX_H = 101;
const int MAX_W = 101;

int N, M;
char field[MAX_W][MAX_H];
int dx[4] = {1, 0, -1, 0}, dy[4] = {0, 1, 0, -1};


void inputField(int n, int m) {
    cin.tie(0);
    ios::sync_with_stdio(false);
    string line;

    for (int i = 0; i < n; i++) {
        getline(cin, line);
        for(int j = 0; j < m; j++) {
            field[i][j] = line[j];
        }
    }
}

void printField(int n, int m) {
    for(int i=0; i < n; i++){
        for(int j=0; j < m; j++){
          cout << field[i][j];
        }
        cout << endl;
    }
}

void dfs(int x, int y, char f) {
    field[x][y] = '.';
    for (int i = 0; i < 4; ++i) {
        int nx = x + dx[i], ny = y + dy[i];
        if (0 <= nx && nx < N && 0 <= ny && ny < M && field[nx][ny] == f) {
            dfs(nx, ny, f);
        }
    }
}

int main(void) {
    cin.tie(0);
    ios::sync_with_stdio(false);

    while(1) {
        int res = 0;
        cin >> N >> M; cin.ignore();
        if (N == 0 && M == 0) break;
        inputField(N, M);

        for (int i = 0; i < N; i++) {
            for (int j = 0; j < M; j++) {
                if (field[i][j] != '.') {
                    dfs(i, j, field[i][j]);
                    res++;
                }
            }
        }
        cout << res << endl;
    }

    return 0;
}
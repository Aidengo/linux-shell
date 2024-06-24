#include "shell.h"
#include <fstream>
#include <iostream>

using namespace std;

void execute_script(const string& script_file);

int main(int argc, char* argv[]) {
    if (argc > 1) {
        // 如果提供了脚本文件名，则执行脚本
        string script_file = argv[1];
        execute_script(script_file);
        return 0;
    }

    string command_line;
    const char* prompt = "shell> ";

    while (true) {
        cout << prompt;
        getline(cin, command_line);

        // 解析命令行输入为参数列表
        vector<string> args = tokenize_command(command_line);

        // 检查内置命令
        if (args.empty()) {
            continue;
        }
        if (args[0] == "exit") {
            break;
        } else if (args[0] == "cd") {
            if (args.size() < 2) {
                cerr << "cd: 缺少参数" << endl;
            } else {
                if (chdir(args[1].c_str()) != 0) {
                    perror("cd");
                }
            }
            continue;
        }

        // 执行命令
        execute_input(args);
    }

    return 0;
}

// 执行脚本文件
void execute_script(const string& script_file) {
    ifstream file(script_file);
    if (!file.is_open()) {
        cerr << "无法打开脚本文件: " << script_file << endl;
        return;
    }

    string line;
    while (getline(file, line)) {
        vector<string> args = tokenize_command(line);
        if (args.empty()) {
            continue;
        }
        execute_input(args);
    }

    file.close();
}

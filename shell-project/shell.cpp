#include "shell.h"

// 将命令行字符串分割成单个命令参数
vector<string> tokenize_command(const string& command_line) {
    vector<string> args;
    size_t pos = 0;
    string token;
    string line = command_line;

    while ((pos = line.find(' ')) != string::npos) {
        token = line.substr(0, pos);
        args.push_back(token);
        line.erase(0, pos + 1);
    }
    args.push_back(line); // 最后一个参数

    return args;
}

// 执行普通命令
void execute_command(const vector<string>& args) {
    vector<char*> argv;
    for (const auto& arg : args) {
        argv.push_back(const_cast<char*>(arg.c_str()));
    }
    argv.push_back(nullptr); // 以 nullptr 结尾的数组

    pid_t pid = fork();
    if (pid == 0) {
        // 子进程
        execvp(argv[0], argv.data());
        perror("execvp");
        exit(EXIT_FAILURE);
    } else if (pid < 0) {
        // fork 失败
        perror("fork");
    } else {
        // 父进程
        int status;
        waitpid(pid, &status, 0); // 等待子进程完成
    }
}

// 执行带有重定向的命令
void execute_with_redirection(const vector<string>& args, bool input_redirect, bool output_redirect, const string& input_file, const string& output_file) {
    int saved_stdout = dup(STDOUT_FILENO);
    int saved_stdin = dup(STDIN_FILENO);

    if (input_redirect) {
        int fd = open(input_file.c_str(), O_RDONLY);
        if (fd < 0) {
            perror("open");
            return;
        }
        dup2(fd, STDIN_FILENO);
        close(fd);
    }

    if (output_redirect) {
        int fd = open(output_file.c_str(), O_WRONLY | O_CREAT | O_TRUNC, 0664);
        if (fd < 0) {
            perror("open");
            return;
        }
        dup2(fd, STDOUT_FILENO);
        close(fd);
    }

    execute_command(args);

    dup2(saved_stdin, STDIN_FILENO);
    dup2(saved_stdout, STDOUT_FILENO);
    close(saved_stdin);
    close(saved_stdout);
}

// 执行带有管道的命令
void execute_with_pipe(const vector<string>& left_command, const vector<string>& right_command) {
    int pipefd[2];
    pipe(pipefd);

    pid_t pid_left = fork();
    if (pid_left == 0) {
        close(pipefd[0]);
        dup2(pipefd[1], STDOUT_FILENO);
        close(pipefd[1]);

        execute_command(left_command);
        exit(EXIT_SUCCESS);
    } else if (pid_left < 0) {
        perror("fork");
        return;
    }

    pid_t pid_right = fork();
    if (pid_right == 0) {
        close(pipefd[1]);
        dup2(pipefd[0], STDIN_FILENO);
        close(pipefd[0]);

        execute_command(right_command);
        exit(EXIT_SUCCESS);
    } else if (pid_right < 0) {
        perror("fork");
        return;
    }

    close(pipefd[0]);
    close(pipefd[1]);

    int status;
    waitpid(pid_left, &status, 0);
    waitpid(pid_right, &status, 0);
}

// 检查命令中的重定向
tuple<bool, bool, string, string> check_redirection(vector<string>& args) {
    bool input_redirect = false;
    bool output_redirect = false;
    string input_file, output_file;

    for (size_t i = 0; i < args.size(); ++i) {
        if (args[i] == "<") {
            if (i + 1 < args.size()) {
                input_redirect = true;
                input_file = args[i + 1];
                args.erase(args.begin() + i, args.begin() + i + 2);
                break;
            } else {
                cerr << "输入重定向语法错误。" << endl;
                continue;
            }
        } else if (args[i] == ">") {
            if (i + 1 < args.size()) {
                output_redirect = true;
                output_file = args[i + 1];
                args.erase(args.begin() + i, args.begin() + i + 2);
                break;
            } else {
                cerr << "输出重定向语法错误。" << endl;
                continue;
            }
        }
    }

    return make_tuple(input_redirect, output_redirect, input_file, output_file);
}

// 检查命令中是否包含管道
bool check_pipe(const vector<string>& args, vector<string>& left_command, vector<string>& right_command) {
    bool pipe_command = false;
    size_t pipe_pos = 0;

    for (size_t i = 0; i < args.size(); ++i) {
        if (args[i] == "|") {
            pipe_command = true;
            pipe_pos = i;
            break;
        }
    }

    if (pipe_command) {
        left_command.insert(left_command.end(), args.begin(), args.begin() + pipe_pos);
        right_command.insert(right_command.end(), args.begin() + pipe_pos + 1, args.end());
    } else {
        left_command = args;
    }

    return pipe_command;
}

// 根据不同情况执行输入命令
void execute_input(vector<string>& args) {
    // 检查是否有 I/O 重定向
    bool input_redirect = false;
    bool output_redirect = false;
    string input_file, output_file;
    tie(input_redirect, output_redirect, input_file, output_file) = check_redirection(args);

    // 检查是否有管道
    vector<string> left_command, right_command;
    bool pipe_command = check_pipe(args, left_command, right_command);

    // 根据不同情况执行命令
    if (pipe_command) {
        execute_with_pipe(left_command, right_command);
    } else if (input_redirect || output_redirect) {
        execute_with_redirection(left_command, input_redirect, output_redirect, input_file, output_file);
    } else {
        execute_command(left_command);
    }
}

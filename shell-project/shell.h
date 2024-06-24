#ifndef SHELL_H
#define SHELL_H

#include <iostream>
#include <vector>
#include <string>
#include <cstring>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <tuple>
#include <fstream>

using namespace std;

// 函数声明
vector<string> tokenize_command(const string& command_line);
void execute_command(const vector<string>& args);
void execute_with_redirection(const vector<string>& args, bool input_redirect, bool output_redirect, const string& input_file, const string& output_file);
void execute_with_pipe(const vector<string>& left_command, const vector<string>& right_command);
tuple<bool, bool, string, string> check_redirection(vector<string>& args);
bool check_pipe(const vector<string>& args, vector<string>& left_command, vector<string>& right_command);
void execute_input(vector<string>& args);

#endif // SHELL_H

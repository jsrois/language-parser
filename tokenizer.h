#ifndef TOKENIZER_H
#define TOKENIZER_H
#include <string>
#include <vector>
using std::string;

class Token
{
    string _text;
public:
    Token();
    Token(const string &text);
    string text() const;
    void setText(const string &text);
};

class CommentToken : public Token {};
class WhitespaceToken : public Token {};
class CodeToken : public Token{};

typedef std::vector<Token> TokenList;
class Tokenizer
{
     TokenList _tokens;
public:
     TokenList tokens() const;
     void setTokens(const TokenList &tokens);

};

std::string serialize(TokenList tokenList);


#endif // TOKENIZER_H

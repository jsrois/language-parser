#include "tokenizer.h"


string Token::text() const
{
    return _text;
}

void Token::setText(const string &text)
{
    _text = text;
}

Token::Token()
{
}

Token::Token(const std::string &text) : _text(text) {}

TokenList Tokenizer::tokens() const
{
    return _tokens;
}

void Tokenizer::setTokens(const TokenList &tokens)
{
    _tokens = tokens;
}


std::string serialize(TokenList tokenList)
{
    return tokenList.empty()?
                "" :
                (tokenList.front().text() + serialize(TokenList(tokenList.begin()+1,tokenList.end())));
}

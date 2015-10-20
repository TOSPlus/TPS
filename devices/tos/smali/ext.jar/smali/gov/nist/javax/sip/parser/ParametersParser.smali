.class public abstract Lgov/nist/javax/sip/parser/ParametersParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ParametersParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    .locals 3
    .param p1, "parametersHeader"    # Lgov/nist/javax/sip/header/ParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 54
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 55
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 57
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 58
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v0

    .line 59
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 61
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 63
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_0
    return-void
.end method

.method protected parseNameValueList(Lgov/nist/javax/sip/header/ParametersHeader;)V
    .locals 3
    .param p1, "parametersHeader"    # Lgov/nist/javax/sip/header/ParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameters()V

    .line 71
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v0

    .line 73
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    .line 79
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0
.end method

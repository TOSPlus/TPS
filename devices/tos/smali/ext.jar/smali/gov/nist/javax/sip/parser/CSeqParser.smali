.class public Lgov/nist/javax/sip/parser/CSeqParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "CSeqParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cseq"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/CSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    .line 59
    .local v0, "c":Lgov/nist/javax/sip/header/CSeq;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x82e

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 60
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 61
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V

    .line 65
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 66
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/CSeqParser;->method()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "m":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    return-object v0

    .line 74
    .end local v0    # "c":Lgov/nist/javax/sip/header/CSeq;
    .end local v2    # "m":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    .line 76
    const-string v4, "Number format exception"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/CSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 77
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-static {v1}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    .line 79
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/CSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
.end method

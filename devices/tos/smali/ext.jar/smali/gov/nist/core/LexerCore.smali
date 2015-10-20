.class public Lgov/nist/core/LexerCore;
.super Lgov/nist/core/StringTokenizer;
.source "LexerCore.java"


# static fields
.field public static final ALPHA:I = 0x1003

.field static final ALPHADIGIT_VALID_CHARS:C = '\ufffd'

.field static final ALPHA_VALID_CHARS:C = '\uffff'

.field public static final AND:I = 0x26

.field public static final AT:I = 0x40

.field public static final BACKSLASH:I = 0x5c

.field public static final BACK_QUOTE:I = 0x60

.field public static final BAR:I = 0x7c

.field public static final COLON:I = 0x3a

.field public static final DIGIT:I = 0x1002

.field static final DIGIT_VALID_CHARS:C = '\ufffe'

.field public static final DOLLAR:I = 0x24

.field public static final DOT:I = 0x2e

.field public static final DOUBLEQUOTE:I = 0x22

.field public static final END:I = 0x1000

.field public static final EQUALS:I = 0x3d

.field public static final EXCLAMATION:I = 0x21

.field public static final GREATER_THAN:I = 0x3e

.field public static final HAT:I = 0x5e

.field public static final HT:I = 0x9

.field public static final ID:I = 0xfff

.field public static final LESS_THAN:I = 0x3c

.field public static final LPAREN:I = 0x28

.field public static final L_CURLY:I = 0x7b

.field public static final L_SQUARE_BRACKET:I = 0x5b

.field public static final MINUS:I = 0x2d

.field public static final NULL:I = 0x0

.field public static final PERCENT:I = 0x25

.field public static final PLUS:I = 0x2b

.field public static final POUND:I = 0x23

.field public static final QUESTION:I = 0x3f

.field public static final QUOTE:I = 0x27

.field public static final RPAREN:I = 0x29

.field public static final R_CURLY:I = 0x7d

.field public static final R_SQUARE_BRACKET:I = 0x5d

.field public static final SAFE:I = 0xffe

.field public static final SEMICOLON:I = 0x3b

.field public static final SLASH:I = 0x2f

.field public static final SP:I = 0x20

.field public static final STAR:I = 0x2a

.field public static final START:I = 0x800

.field public static final TILDE:I = 0x7e

.field public static final UNDERSCORE:I = 0x5f

.field public static final WHITESPACE:I = 0x1001

.field protected static final globalSymbolTable:Ljava/util/Hashtable;

.field protected static final lexerTables:Ljava/util/Hashtable;


# instance fields
.field protected currentLexer:Ljava/util/Hashtable;

.field protected currentLexerName:Ljava/lang/String;

.field protected currentMatch:Lgov/nist/core/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    .line 93
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    .line 94
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lgov/nist/core/StringTokenizer;-><init>()V

    .line 130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 131
    const-string v0, "charLexer"

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0, p2}, Lgov/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public static charAsString(C)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 646
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isTokenChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 300
    invoke-static {p0}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    :goto_0
    :sswitch_0
    return v0

    .line 301
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 315
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public SPorHT()V
    .locals 2

    .prologue
    .line 279
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 280
    .local v0, "c":C
    :goto_0
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 281
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 282
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 284
    .end local v0    # "c":C
    :catch_0
    move-exception v1

    .line 287
    :cond_1
    return-void
.end method

.method protected addKeyword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-void
.end method

.method protected addLexer(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2
    .param p1, "lexerName"    # Ljava/lang/String;

    .prologue
    .line 115
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 116
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 118
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    return-object v0
.end method

.method public byteStringNoComma()Ljava/lang/String;
    .locals 3

    .prologue
    .line 629
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 632
    .local v1, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 633
    .local v0, "next":C
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_1

    .line 642
    .end local v0    # "next":C
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 636
    .restart local v0    # "next":C
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 637
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 640
    .end local v0    # "next":C
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public byteStringNoSemicolon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 582
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 585
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 587
    .local v1, "next":C
    if-eqz v1, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1

    .line 597
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "next":C
    :goto_1
    return-object v3

    .line 590
    .restart local v1    # "next":C
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 591
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 594
    .end local v1    # "next":C
    :catch_0
    move-exception v0

    .line 595
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public byteStringNoSlash()Ljava/lang/String;
    .locals 4

    .prologue
    .line 606
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 609
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 611
    .local v1, "next":C
    if-eqz v1, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_1

    .line 621
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "next":C
    :goto_1
    return-object v3

    .line 614
    .restart local v1    # "next":C
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 615
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 618
    .end local v1    # "next":C
    :catch_0
    move-exception v0

    .line 619
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public charAsString(I)Ljava/lang/String;
    .locals 3
    .param p1, "nchars"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public comment()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 551
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 552
    .local v1, "retval":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_0

    .line 553
    const/4 v2, 0x0

    .line 575
    :goto_0
    return-object v2

    .line 554
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 556
    :goto_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    .line 557
    .local v0, "next":C
    const/16 v2, 0x29

    if-ne v0, v2, :cond_1

    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 559
    :cond_1
    if-nez v0, :cond_2

    .line 560
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 563
    :cond_2
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_4

    .line 564
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    .line 566
    if-nez v0, :cond_3

    .line 567
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 570
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 572
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public consumeValidChars([C)V
    .locals 8
    .param p1, "validChars"    # [C

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 485
    array-length v4, p1

    .line 487
    .local v4, "validCharsLength":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 488
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 489
    .local v2, "nextChar":C
    const/4 v1, 0x0

    .line 490
    .local v1, "isValid":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_0

    .line 491
    aget-char v3, p1, v0

    .line 492
    .local v3, "validChar":C
    packed-switch v3, :pswitch_data_0

    .line 503
    if-ne v2, v3, :cond_2

    move v1, v5

    .line 505
    :goto_2
    if-eqz v1, :cond_3

    .line 509
    .end local v3    # "validChar":C
    :cond_0
    if-eqz v1, :cond_1

    .line 510
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 516
    .end local v0    # "i":I
    .end local v1    # "isValid":Z
    .end local v2    # "nextChar":C
    :catch_0
    move-exception v5

    .line 519
    :cond_1
    return-void

    .line 494
    .restart local v0    # "i":I
    .restart local v1    # "isValid":Z
    .restart local v2    # "nextChar":C
    .restart local v3    # "validChar":C
    :pswitch_0
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v1

    .line 495
    goto :goto_2

    .line 497
    :pswitch_1
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v1

    .line 498
    goto :goto_2

    .line 500
    :pswitch_2
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 501
    goto :goto_2

    :cond_2
    move v1, v6

    .line 503
    goto :goto_2

    .line 490
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0xfffd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createParseException()Ljava/text/ParseException;
    .locals 3

    .prologue
    .line 759
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getBuffer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    return-object v0
.end method

.method public getNextId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextToken()Lgov/nist/core/Token;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v0
.end method

.method public getPtr()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public getRest()Ljava/lang/String;
    .locals 2

    .prologue
    .line 701
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 702
    const/4 v0, 0x0

    .line 704
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getString(C)Ljava/lang/String;
    .locals 6
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 712
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 714
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 718
    .local v0, "next":C
    if-nez v0, :cond_0

    .line 719
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unexpected EOL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 722
    :cond_0
    if-ne v0, p1, :cond_1

    .line 723
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 741
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 725
    :cond_1
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_3

    .line 726
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 727
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 728
    .local v1, "nextchar":C
    if-nez v1, :cond_2

    .line 729
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unexpected EOL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 733
    :cond_2
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 734
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 737
    .end local v1    # "nextchar":C
    :cond_3
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 738
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public lookupToken(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 106
    const/16 v1, 0x800

    if-le p1, v1, :cond_0

    .line 107
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    :goto_0
    return-object v1

    .line 109
    :cond_0
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 110
    .local v0, "ch":Ljava/lang/Character;
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public markInputPosition()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public match(I)Lgov/nist/core/Token;
    .locals 12
    .param p1, "tok"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1000

    const/16 v10, 0xfff

    const/16 v9, 0xffe

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 205
    sget-boolean v5, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v5, :cond_0

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 208
    :cond_0
    const/16 v5, 0x800

    if-le p1, v5, :cond_8

    if-ge p1, v11, :cond_8

    .line 209
    if-ne p1, v10, :cond_3

    .line 211
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v5

    if-nez v5, :cond_1

    .line 212
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nID expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 213
    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "id":Ljava/lang/String;
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 215
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v2, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 216
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v10, v5, Lgov/nist/core/Token;->tokenType:I

    .line 274
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v5

    .line 217
    :cond_3
    if-ne p1, v9, :cond_5

    .line 218
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsSafeToken()Z

    move-result v5

    if-nez v5, :cond_4

    .line 219
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nID expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 220
    :cond_4
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2    # "id":Ljava/lang/String;
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 222
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v2, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 223
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v9, v5, Lgov/nist/core/Token;->tokenType:I

    goto :goto_0

    .line 225
    .end local v2    # "id":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "nexttok":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 228
    .local v1, "cur":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_7

    .line 229
    :cond_6
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nUnexpected Token : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 232
    :cond_7
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 233
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v4, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 234
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    goto/16 :goto_0

    .line 236
    .end local v1    # "cur":Ljava/lang/Integer;
    .end local v4    # "nexttok":Ljava/lang/String;
    :cond_8
    if-le p1, v11, :cond_c

    .line 238
    invoke-virtual {p0, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 239
    .local v3, "next":C
    const/16 v5, 0x1002

    if-ne p1, v5, :cond_a

    .line 240
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_9

    .line 241
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nExpecting DIGIT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 242
    :cond_9
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 243
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 245
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    .line 246
    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_0

    .line 248
    :cond_a
    const/16 v5, 0x1003

    if-ne p1, v5, :cond_2

    .line 249
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v5

    if-nez v5, :cond_b

    .line 250
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nExpecting ALPHA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 251
    :cond_b
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 252
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 254
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    .line 255
    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_0

    .line 261
    .end local v3    # "next":C
    :cond_c
    int-to-char v0, p1

    .line 262
    .local v0, "ch":C
    invoke-virtual {p0, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 263
    .restart local v3    # "next":C
    if-ne v3, v0, :cond_d

    .line 268
    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_0

    .line 270
    :cond_d
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nExpecting  >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<<< got >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<<<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5
.end method

.method public number()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 662
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 664
    .local v2, "startIdx":I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 665
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Unexpected token at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "ex":Ljava/text/ParseException;
    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v0    # "ex":Ljava/text/ParseException;
    :goto_0
    return-object v3

    .line 669
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 671
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 672
    .local v1, "next":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 673
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_1

    .line 677
    :cond_1
    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method public peekNextId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 146
    .local v0, "oldPtr":I
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "retval":Ljava/lang/String;
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    iput v2, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    .line 148
    iput v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 149
    return-object v1
.end method

.method public peekNextToken()Lgov/nist/core/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekNextToken(I)[Lgov/nist/core/Token;
    .locals 9
    .param p1, "ntokens"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 171
    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 172
    .local v4, "old":I
    new-array v5, p1, [Lgov/nist/core/Token;

    .line 173
    .local v5, "retval":[Lgov/nist/core/Token;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_4

    .line 174
    new-instance v6, Lgov/nist/core/Token;

    invoke-direct {v6}, Lgov/nist/core/Token;-><init>()V

    .line 175
    .local v6, "tok":Lgov/nist/core/Token;
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "id":Ljava/lang/String;
    iput-object v1, v6, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "idUppercase":Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 180
    iget-object v8, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 181
    .local v7, "type":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    .line 194
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "idUppercase":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/Integer;
    :goto_1
    aput-object v6, v5, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "idUppercase":Ljava/lang/String;
    :cond_0
    const/16 v8, 0xfff

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 185
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "idUppercase":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v3

    .line 186
    .local v3, "nextChar":C
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 187
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 188
    const/16 v8, 0x1003

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 189
    :cond_2
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 190
    const/16 v8, 0x1002

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 192
    :cond_3
    iput v3, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 196
    .end local v3    # "nextChar":C
    .end local v6    # "tok":Lgov/nist/core/Token;
    :cond_4
    iget v8, p0, Lgov/nist/core/LexerCore;->ptr:I

    iput v8, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    .line 197
    iput v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 198
    return-object v5
.end method

.method public quotedString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    const/4 v3, 0x1

    .line 526
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    add-int/lit8 v1, v2, 0x1

    .line 527
    .local v1, "startIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    .line 528
    const/4 v2, 0x0

    .line 543
    :goto_0
    return-object v2

    .line 529
    :cond_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 531
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    .line 532
    .local v0, "next":C
    if-ne v0, v4, :cond_2

    .line 543
    iget-object v2, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 535
    :cond_2
    if-nez v0, :cond_3

    .line 536
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 539
    :cond_3
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    .line 540
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_1
.end method

.method public rewindInputPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 694
    iput p1, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 695
    return-void
.end method

.method public selectLexer(Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public startsId()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 322
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 323
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 325
    .end local v1    # "nextChar":C
    :goto_0
    return v2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public startsSafeToken()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 331
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 332
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    .end local v1    # "nextChar":C
    :goto_0
    :sswitch_0
    return v2

    .line 336
    .restart local v1    # "nextChar":C
    :cond_0
    sparse-switch v1, :sswitch_data_0

    move v2, v3

    .line 364
    goto :goto_0

    .line 367
    .end local v1    # "nextChar":C
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/text/ParseException;
    move v2, v3

    .line 368
    goto :goto_0

    .line 336
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method public ttoken()Ljava/lang/String;
    .locals 5

    .prologue
    .line 373
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 375
    .local v2, "startIdx":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 377
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 384
    .end local v1    # "nextChar":C
    :catch_0
    move-exception v0

    .line 385
    .local v0, "ex":Ljava/text/ParseException;
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/text/ParseException;
    :goto_1
    return-object v3

    .line 383
    :cond_0
    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method public ttokenSafe()Ljava/lang/String;
    .locals 6

    .prologue
    .line 431
    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 433
    .local v3, "startIdx":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 435
    .local v2, "nextChar":C
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 476
    .end local v2    # "nextChar":C
    :catch_0
    move-exception v0

    .line 477
    .local v0, "ex":Ljava/text/ParseException;
    const/4 v4, 0x0

    .end local v0    # "ex":Ljava/text/ParseException;
    :goto_1
    return-object v4

    .line 439
    .restart local v2    # "nextChar":C
    :cond_0
    const/4 v1, 0x0

    .line 440
    .local v1, "isValidChar":Z
    sparse-switch v2, :sswitch_data_0

    .line 467
    :goto_2
    if-eqz v1, :cond_1

    .line 468
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 465
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_2

    .line 475
    .end local v1    # "isValidChar":Z
    .end local v2    # "nextChar":C
    :cond_1
    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

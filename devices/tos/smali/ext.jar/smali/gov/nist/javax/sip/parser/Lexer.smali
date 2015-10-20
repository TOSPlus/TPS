.class public Lgov/nist/javax/sip/parser/Lexer;
.super Lgov/nist/core/LexerCore;
.source "Lexer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Lexer;->selectLexer(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static getHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 54
    if-nez p0, :cond_1

    move-object v2, v3

    .line 65
    :cond_0
    :goto_0
    return-object v2

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 58
    .local v2, "headerName":Ljava/lang/String;
    :try_start_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "begin":I
    const/4 v2, 0x0

    .line 60
    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    .line 61
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 62
    .end local v0    # "begin":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v2, v3

    .line 63
    goto :goto_0
.end method

.method public static getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p0, :cond_0

    move-object v2, v3

    .line 88
    :goto_0
    return-object v2

    .line 81
    :cond_0
    const/4 v2, 0x0

    .line 83
    .local v2, "headerValue":Ljava/lang/String;
    :try_start_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "begin":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 85
    .end local v0    # "begin":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v2, v3

    .line 86
    goto :goto_0
.end method


# virtual methods
.method public selectLexer(Ljava/lang/String;)V
    .locals 3
    .param p1, "lexerName"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v1, Lgov/nist/javax/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lgov/nist/javax/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lgov/nist/javax/sip/parser/Lexer;->currentLexer:Ljava/util/Hashtable;

    .line 95
    iput-object p1, p0, Lgov/nist/javax/sip/parser/Lexer;->currentLexerName:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Lexer;->currentLexer:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Lexer;->addLexer(Ljava/lang/String;)Ljava/util/Hashtable;

    .line 98
    const-string v0, "method_keywordLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "REGISTER"

    const/16 v2, 0x804

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 100
    const-string v0, "ACK"

    const/16 v2, 0x806

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 101
    const-string v0, "OPTIONS"

    const/16 v2, 0x808

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 102
    const-string v0, "BYE"

    const/16 v2, 0x807

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 103
    const-string v0, "INVITE"

    const/16 v2, 0x805

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 104
    const-string v0, "sip"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 105
    const-string v0, "sips"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x858

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 106
    const-string v0, "SUBSCRIBE"

    const/16 v2, 0x835

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 107
    const-string v0, "NOTIFY"

    const/16 v2, 0x836

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 108
    const-string v0, "MESSAGE"

    const/16 v2, 0x846

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 111
    const-string v0, "PUBLISH"

    const/16 v2, 0x843

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 322
    :cond_0
    :goto_0
    monitor-exit v1

    .line 323
    return-void

    .line 113
    :cond_1
    const-string v0, "command_keywordLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string v0, "Error-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 116
    const-string v0, "Allow-Events"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x841

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 118
    const-string v0, "Authentication-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x840

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 120
    const-string v0, "Event"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 121
    const-string v0, "Min-Expires"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 123
    const-string v0, "RSeq"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 124
    const-string v0, "RAck"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83d

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 125
    const-string v0, "Reason"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 127
    const-string v0, "Reply-To"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 129
    const-string v0, "Subscription-State"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x838

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 131
    const-string v0, "Timestamp"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x837

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 133
    const-string v0, "In-Reply-To"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 135
    const-string v0, "MIME-Version"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 137
    const-string v0, "Alert-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80d

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 139
    const-string v0, "From"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 140
    const-string v0, "To"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 141
    const-string v0, "Refer-To"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x842

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 143
    const-string v0, "Via"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x810

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 144
    const-string v0, "User-Agent"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x811

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 146
    const-string v0, "Server"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x812

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 148
    const-string v0, "Accept-Encoding"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x813

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 150
    const-string v0, "Accept"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x814

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 152
    const-string v0, "Allow"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x815

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 153
    const-string v0, "Route"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x816

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 154
    const-string v0, "Authorization"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x817

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 156
    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x818

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 158
    const-string v0, "Retry-After"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x819

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 160
    const-string v0, "Proxy-Require"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 162
    const-string v0, "Content-Language"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 164
    const-string v0, "Unsupported"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 166
    const-string v0, "Supported"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x814

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 168
    const-string v0, "Warning"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 170
    const-string v0, "Max-Forwards"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 172
    const-string v0, "Date"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x820

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 173
    const-string v0, "Priority"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x821

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 175
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x822

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 177
    const-string v0, "Content-Encoding"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x823

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 179
    const-string v0, "Content-Length"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x824

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 181
    const-string v0, "Subject"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x825

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 183
    const-string v0, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x826

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 185
    const-string v0, "Contact"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x827

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 187
    const-string v0, "Call-ID"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x828

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 189
    const-string v0, "Require"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x829

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 191
    const-string v0, "Expires"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 193
    const-string v0, "Record-Route"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 195
    const-string v0, "Organization"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82d

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 197
    const-string v0, "CSeq"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 198
    const-string v0, "Accept-Language"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 200
    const-string v0, "WWW-Authenticate"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x830

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 202
    const-string v0, "Call-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x833

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 204
    const-string v0, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x834

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 207
    const-string v0, "K"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x814

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 208
    const-string v0, "C"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x826

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 210
    const-string v0, "E"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x823

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 212
    const-string v0, "F"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 213
    const-string v0, "I"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x828

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 214
    const-string v0, "M"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x827

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 215
    const-string v0, "L"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x824

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 217
    const-string v0, "S"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x825

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 218
    const-string v0, "T"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 219
    const-string v0, "U"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x841

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 221
    const-string v0, "V"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x810

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 222
    const-string v0, "R"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x842

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 223
    const-string v0, "O"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 228
    const-string v0, "X"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x855

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 231
    const-string v0, "SIP-ETag"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x844

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 233
    const-string v0, "SIP-If-Match"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x845

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 237
    const-string v0, "Session-Expires"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x855

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 239
    const-string v0, "Min-SE"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x856

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 241
    const-string v0, "Referred-By"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x854

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 245
    const-string v0, "Replaces"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x857

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 248
    const-string v0, "Join"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 252
    const-string v0, "Path"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x847

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 253
    const-string v0, "Service-Route"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x848

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 255
    const-string v0, "P-Asserted-Identity"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x849

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 257
    const-string v0, "P-Preferred-Identity"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 259
    const-string v0, "Privacy"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 263
    const-string v0, "P-Called-Party-ID"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x850

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 265
    const-string v0, "P-Associated-URI"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x851

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 267
    const-string v0, "P-Visited-Network-ID"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 269
    const-string v0, "P-Charging-Function-Addresses"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84c

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 272
    const-string v0, "P-Charging-Vector"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84d

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 274
    const-string v0, "P-Access-Network-Info"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 276
    const-string v0, "P-Media-Authorization"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x852

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 279
    const-string v0, "Security-Server"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x859

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 281
    const-string v0, "Security-Verify"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85b

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 283
    const-string v0, "Security-Client"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85a

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 287
    const-string v0, "P-User-Database"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85d    # 3.0E-42f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 291
    const-string v0, "P-Profile-Key"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85e

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 295
    const-string v0, "P-Served-User"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85f

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 299
    const-string v0, "P-Preferred-Service"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x860

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 303
    const-string v0, "P-Asserted-Service"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x861

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 307
    const-string v0, "References"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x862

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 312
    :cond_2
    :try_start_1
    const-string v0, "status_lineLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    const-string v0, "sip"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 314
    :cond_3
    const-string v0, "request_lineLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    const-string v0, "sip"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 316
    :cond_4
    const-string v0, "sip_urlLexer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "tel"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x839

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 318
    const-string v0, "sip"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x803

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    .line 319
    const-string v0, "sips"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x858

    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

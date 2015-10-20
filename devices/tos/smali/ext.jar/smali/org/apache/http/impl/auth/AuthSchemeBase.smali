.class public abstract Lorg/apache/http/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lorg/apache/http/auth/AuthScheme;


# instance fields
.field private proxy:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public isProxy()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    return v0
.end method

.method protected abstract parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 9
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Header may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 75
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "authheader":Ljava/lang/String;
    const-string v6, "WWW-Authenticate"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    .line 86
    :goto_0
    instance-of v6, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v6, :cond_3

    move-object v6, p1

    .line 87
    check-cast v6, Lorg/apache/http/FormattedHeader;

    invoke-interface {v6}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v2

    .line 88
    .local v2, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    check-cast p1, Lorg/apache/http/FormattedHeader;

    .end local p1    # "header":Lorg/apache/http/Header;
    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v4

    .line 98
    .local v4, "pos":I
    :goto_1
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-virtual {v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    .end local v2    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v4    # "pos":I
    .restart local p1    # "header":Lorg/apache/http/Header;
    :cond_1
    const-string v6, "Proxy-Authenticate"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    goto :goto_0

    .line 81
    :cond_2
    new-instance v6, Lorg/apache/http/auth/MalformedChallengeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected header name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 90
    :cond_3
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "s":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 92
    new-instance v6, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v7, "Header value is null"

    invoke-direct {v6, v7}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    :cond_4
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v6}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 95
    .restart local v2    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v2, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 96
    const/4 v4, 0x0

    .restart local v4    # "pos":I
    goto :goto_1

    .line 101
    .end local v5    # "s":Ljava/lang/String;
    .end local p1    # "header":Lorg/apache/http/Header;
    :cond_5
    move v1, v4

    .line 102
    .local v1, "beginIndex":I
    :goto_2
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    if-ge v4, v6, :cond_6

    invoke-virtual {v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_6

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 105
    :cond_6
    move v3, v4

    .line 106
    .local v3, "endIndex":I
    invoke-virtual {v2, v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 107
    .restart local v5    # "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 108
    new-instance v6, Lorg/apache/http/auth/MalformedChallengeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid scheme identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_7
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-virtual {p0, v2, v4, v6}, Lorg/apache/http/impl/auth/AuthSchemeBase;->parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 112
    return-void
.end method

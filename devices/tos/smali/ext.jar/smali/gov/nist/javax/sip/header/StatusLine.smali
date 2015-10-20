.class public final Lgov/nist/javax/sip/header/StatusLine;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "StatusLine.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SipStatusLine;


# static fields
.field private static final serialVersionUID:J = -0x41c115c43b1c364eL


# instance fields
.field protected matchStatusClass:Z

.field protected reasonPhrase:Ljava/lang/String;

.field protected sipVersion:Ljava/lang/String;

.field protected statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    .line 108
    const-string v0, "SIP/2.0"

    iput-object v0, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP/2.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "encoding":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSipVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    return v0
.end method

.method public getVersionMajor()Ljava/lang/String;
    .locals 5

    .prologue
    .line 169
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 170
    const/4 v1, 0x0

    .line 185
    :cond_0
    return-object v1

    .line 171
    :cond_1
    const/4 v1, 0x0

    .line 172
    .local v1, "major":Ljava/lang/String;
    const/4 v2, 0x0

    .line 173
    .local v2, "slash":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 174
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    .line 175
    const/4 v2, 0x0

    .line 176
    :cond_2
    if-eqz v2, :cond_3

    .line 177
    if-nez v1, :cond_5

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_3
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_4

    .line 183
    const/4 v2, 0x1

    .line 173
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 5

    .prologue
    .line 192
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 193
    const/4 v2, 0x0

    .line 206
    :cond_0
    return-object v2

    .line 194
    :cond_1
    const/4 v2, 0x0

    .line 195
    .local v2, "minor":Ljava/lang/String;
    const/4 v0, 0x0

    .line 196
    .local v0, "dot":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 197
    if-eqz v0, :cond_2

    .line 198
    if-nez v2, :cond_4

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    :cond_2
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_3

    .line 204
    const/4 v0, 0x1

    .line 196
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "matchObj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 69
    instance-of v5, p1, Lgov/nist/javax/sip/header/StatusLine;

    if-nez v5, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v3, p1

    .line 71
    check-cast v3, Lgov/nist/javax/sip/header/StatusLine;

    .line 73
    .local v3, "sl":Lgov/nist/javax/sip/header/StatusLine;
    iget-object v5, v3, Lgov/nist/javax/sip/header/StatusLine;->matchExpression:Lgov/nist/core/Match;

    if-eqz v5, :cond_2

    .line 74
    iget-object v4, v3, Lgov/nist/javax/sip/header/StatusLine;->matchExpression:Lgov/nist/core/Match;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 76
    :cond_2
    iget-object v5, v3, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    iget-object v6, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    :cond_3
    iget v5, v3, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    if-eqz v5, :cond_4

    .line 79
    iget-boolean v5, p0, Lgov/nist/javax/sip/header/StatusLine;->matchStatusClass:Z

    if-eqz v5, :cond_6

    .line 80
    iget v1, v3, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    .line 81
    .local v1, "hiscode":I
    iget v5, v3, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "codeString":Ljava/lang/String;
    iget v5, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "mycode":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 90
    .end local v0    # "codeString":Ljava/lang/String;
    .end local v1    # "hiscode":I
    .end local v2    # "mycode":Ljava/lang/String;
    :cond_4
    iget-object v4, v3, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    iget-object v5, v3, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    if-ne v4, v5, :cond_7

    .line 91
    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    .line 86
    :cond_6
    iget v5, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    iget v6, v3, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    if-eq v5, v6, :cond_4

    goto :goto_0

    .line 92
    :cond_7
    iget-object v4, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    iget-object v5, v3, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public setMatchStatusClass(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lgov/nist/javax/sip/header/StatusLine;->matchStatusClass:Z

    .line 102
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lgov/nist/javax/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setSipVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lgov/nist/javax/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 155
    iput p1, p0, Lgov/nist/javax/sip/header/StatusLine;->statusCode:I

    .line 156
    return-void
.end method

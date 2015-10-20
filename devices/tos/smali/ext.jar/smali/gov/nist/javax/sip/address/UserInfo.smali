.class public final Lgov/nist/javax/sip/address/UserInfo;
.super Lgov/nist/javax/sip/address/NetObject;
.source "UserInfo.java"


# static fields
.field public static final TELEPHONE_SUBSCRIBER:I = 0x1

.field public static final USER:I = 0x2

.field private static final serialVersionUID:J = 0x64df3b126d0c8190L


# instance fields
.field protected password:Ljava/lang/String;

.field protected user:Ljava/lang/String;

.field protected userType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :goto_0
    return-object p1

    .line 113
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 82
    check-cast v0, Lgov/nist/javax/sip/address/UserInfo;

    .line 83
    .local v0, "other":Lgov/nist/javax/sip/address/UserInfo;
    iget v2, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    iget v3, v0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    if-ne v2, v3, :cond_0

    .line 86
    iget-object v2, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    iget-object v3, v0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 92
    :cond_2
    iget-object v2, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 95
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    iget-object v2, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-ne v1, v2, :cond_4

    .line 96
    const/4 v1, 0x1

    goto :goto_0

    .line 98
    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    iget-object v2, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    .line 156
    if-eqz p1, :cond_1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->setUserType(I)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->setUserType(I)V

    goto :goto_0
.end method

.method public setUserType(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter not in range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    .line 182
    return-void
.end method

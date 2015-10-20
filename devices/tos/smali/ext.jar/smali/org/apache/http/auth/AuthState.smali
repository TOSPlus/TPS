.class public Lorg/apache/http/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# instance fields
.field private authScheme:Lorg/apache/http/auth/AuthScheme;

.field private authScope:Lorg/apache/http/auth/AuthScope;

.field private credentials:Lorg/apache/http/auth/Credentials;


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
.method public getAuthScheme()Lorg/apache/http/auth/AuthScheme;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/http/auth/AuthState;->authScheme:Lorg/apache/http/auth/AuthScheme;

    return-object v0
.end method

.method public getAuthScope()Lorg/apache/http/auth/AuthScope;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/http/auth/AuthState;->authScope:Lorg/apache/http/auth/AuthScope;

    return-object v0
.end method

.method public getCredentials()Lorg/apache/http/auth/Credentials;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/http/auth/AuthState;->credentials:Lorg/apache/http/auth/Credentials;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/apache/http/auth/AuthState;->authScheme:Lorg/apache/http/auth/AuthScheme;

    .line 66
    iput-object v0, p0, Lorg/apache/http/auth/AuthState;->authScope:Lorg/apache/http/auth/AuthScope;

    .line 67
    iput-object v0, p0, Lorg/apache/http/auth/AuthState;->credentials:Lorg/apache/http/auth/Credentials;

    .line 68
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/auth/AuthState;->authScheme:Lorg/apache/http/auth/AuthScheme;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V
    .locals 0
    .param p1, "authScheme"    # Lorg/apache/http/auth/AuthScheme;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->invalidate()V

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lorg/apache/http/auth/AuthState;->authScheme:Lorg/apache/http/auth/AuthScheme;

    goto :goto_0
.end method

.method public setAuthScope(Lorg/apache/http/auth/AuthScope;)V
    .locals 0
    .param p1, "authScope"    # Lorg/apache/http/auth/AuthScope;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/apache/http/auth/AuthState;->authScope:Lorg/apache/http/auth/AuthScope;

    .line 133
    return-void
.end method

.method public setCredentials(Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/apache/http/auth/AuthState;->credentials:Lorg/apache/http/auth/Credentials;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "auth scope ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lorg/apache/http/auth/AuthState;->authScope:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "]; credentials set ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lorg/apache/http/auth/AuthState;->credentials:Lorg/apache/http/auth/Credentials;

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 142
    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method

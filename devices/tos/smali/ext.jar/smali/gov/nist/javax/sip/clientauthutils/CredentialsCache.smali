.class Lgov/nist/javax/sip/clientauthutils/CredentialsCache;
.super Ljava/lang/Object;
.source "CredentialsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;
    }
.end annotation


# instance fields
.field private authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavax/sip/header/AuthorizationHeader;",
            ">;>;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Ljava/util/Timer;)V
    .locals 1
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->timer:Ljava/util/Timer;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/clientauthutils/CredentialsCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .prologue
    .line 17
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method cacheAuthorizationHeader(Ljava/lang/String;Ljavax/sip/header/AuthorizationHeader;I)V
    .locals 9
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "authorization"    # Ljavax/sip/header/AuthorizationHeader;
    .param p3, "cacheTime"    # I

    .prologue
    .line 63
    invoke-interface {p2}, Ljavax/sip/header/AuthorizationHeader;->getUsername()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "user":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Call ID is null!"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 65
    :cond_0
    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Null authorization domain"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    :cond_1
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 68
    .local v1, "authHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/AuthorizationHeader;>;"
    if-nez v1, :cond_4

    .line 69
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "authHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/AuthorizationHeader;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .restart local v1    # "authHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/AuthorizationHeader;>;"
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v4, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;

    invoke-direct {v4, p0, p1, v5}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;-><init>(Lgov/nist/javax/sip/clientauthutils/CredentialsCache;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v4, "timeoutTask":Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;
    const/4 v6, -0x1

    if-eq p3, v6, :cond_3

    .line 85
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->timer:Ljava/util/Timer;

    mul-int/lit16 v7, p3, 0x3e8

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 88
    :cond_3
    return-void

    .line 72
    .end local v4    # "timeoutTask":Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;
    :cond_4
    invoke-interface {p2}, Ljavax/sip/header/AuthorizationHeader;->getRealm()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "realm":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/AuthorizationHeader;>;"
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/AuthorizationHeader;

    .line 75
    .local v0, "authHeader":Ljavax/sip/header/AuthorizationHeader;
    invoke-interface {v0}, Ljavax/sip/header/AuthorizationHeader;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 76
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0
.end method

.method getCachedAuthorizationHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "callid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/sip/header/AuthorizationHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null arg!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public removeAuthenticationHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

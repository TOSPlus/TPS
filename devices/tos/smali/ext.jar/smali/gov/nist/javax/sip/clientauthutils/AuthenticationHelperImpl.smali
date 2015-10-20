.class public Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
.super Ljava/lang/Object;
.source "AuthenticationHelperImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;


# instance fields
.field private accountManager:Ljava/lang/Object;

.field private cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

.field private headerFactory:Ljavax/sip/header/HeaderFactory;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V
    .locals 2
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .param p3, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 95
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 98
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 99
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V
    .locals 2
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;
    .param p3, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 112
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 113
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 115
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 116
    return-void
.end method

.method private getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;
    .locals 15
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "authHeader"    # Ljavax/sip/header/WWWAuthenticateHeader;
    .param p5, "userCredentials"    # Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    .prologue
    .line 364
    const/4 v14, 0x0

    .line 368
    .local v14, "response":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v13

    .line 369
    .local v13, "qopList":Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string v9, "auth"

    .line 370
    .local v9, "qop":Ljava/lang/String;
    :goto_0
    const-string v4, "00000001"

    .line 371
    .local v4, "nc_value":Ljava/lang/String;
    const-string v5, "xyz"

    .line 373
    .local v5, "cnonce":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getHashUserDomainPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v10}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v14

    .line 378
    const/4 v11, 0x0

    .line 380
    .local v11, "authorization":Ljavax/sip/header/AuthorizationHeader;
    :try_start_0
    move-object/from16 v0, p4

    instance-of v1, v0, Ljavax/sip/header/ProxyAuthenticateHeader;

    if-eqz v1, :cond_4

    .line 381
    iget-object v1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v11

    .line 387
    :goto_1
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    .line 388
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 389
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 390
    const-string v1, "uri"

    move-object/from16 v0, p2

    invoke-interface {v11, v1, v0}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-interface {v11, v14}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 392
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 396
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 397
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 401
    :cond_1
    if-eqz v9, :cond_2

    .line 402
    invoke-interface {v11, v9}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 403
    invoke-interface {v11, v5}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    .line 404
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    .line 407
    :cond_2
    invoke-interface {v11, v14}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 413
    return-object v11

    .line 369
    .end local v4    # "nc_value":Ljava/lang/String;
    .end local v5    # "cnonce":Ljava/lang/String;
    .end local v9    # "qop":Ljava/lang/String;
    .end local v11    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 384
    .restart local v4    # "nc_value":Ljava/lang/String;
    .restart local v5    # "cnonce":Ljava/lang/String;
    .restart local v9    # "qop":Ljava/lang/String;
    .restart local v11    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_1

    .line 409
    :catch_0
    move-exception v12

    .line 410
    .local v12, "ex":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create an authorization header!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;
    .locals 17
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "authHeader"    # Ljavax/sip/header/WWWAuthenticateHeader;
    .param p5, "userCredentials"    # Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    .prologue
    .line 297
    const/16 v16, 0x0

    .line 301
    .local v16, "response":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v15

    .line 302
    .local v15, "qopList":Ljava/lang/String;
    if-eqz v15, :cond_3

    const-string v11, "auth"

    .line 303
    .local v11, "qop":Ljava/lang/String;
    :goto_0
    const-string v6, "00000001"

    .line 304
    .local v6, "nc_value":Ljava/lang/String;
    const-string v7, "xyz"

    .line 306
    .local v7, "cnonce":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v1 .. v12}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v16

    .line 312
    const/4 v13, 0x0

    .line 314
    .local v13, "authorization":Ljavax/sip/header/AuthorizationHeader;
    :try_start_0
    move-object/from16 v0, p4

    instance-of v1, v0, Ljavax/sip/header/ProxyAuthenticateHeader;

    if-eqz v1, :cond_4

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v13

    .line 321
    :goto_1
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    .line 322
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 323
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 324
    const-string v1, "uri"

    move-object/from16 v0, p2

    invoke-interface {v13, v1, v0}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 326
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 330
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 335
    :cond_1
    if-eqz v11, :cond_2

    .line 336
    invoke-interface {v13, v11}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 337
    invoke-interface {v13, v7}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    .line 338
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    .line 341
    :cond_2
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 347
    return-object v13

    .line 302
    .end local v6    # "nc_value":Ljava/lang/String;
    .end local v7    # "cnonce":Ljava/lang/String;
    .end local v11    # "qop":Ljava/lang/String;
    .end local v13    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 318
    .restart local v6    # "nc_value":Ljava/lang/String;
    .restart local v7    # "cnonce":Ljava/lang/String;
    .restart local v11    # "qop":Ljava/lang/String;
    .restart local v13    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto :goto_1

    .line 343
    :catch_0
    move-exception v14

    .line 344
    .local v14, "ex":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create an authorization header!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeBranchID(Ljavax/sip/message/Request;)V
    .locals 2
    .param p1, "request"    # Ljavax/sip/message/Request;

    .prologue
    .line 424
    const-string v1, "Via"

    invoke-interface {p1, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 426
    .local v0, "viaHeader":Ljavax/sip/header/ViaHeader;
    const-string v1, "branch"

    invoke-interface {v0, v1}, Ljavax/sip/header/ViaHeader;->removeParameter(Ljava/lang/String;)V

    .line 428
    return-void
.end method


# virtual methods
.method public handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;
    .locals 30
    .param p1, "challenge"    # Ljavax/sip/message/Response;
    .param p2, "challengedTransaction"    # Ljavax/sip/ClientTransaction;
    .param p3, "transactionCreator"    # Ljavax/sip/SipProvider;
    .param p4, "cacheTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleChallenge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v17

    check-cast v17, Lgov/nist/javax/sip/message/SIPRequest;

    .line 135
    .local v17, "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    const/16 v24, 0x0

    .line 141
    .local v24, "reoriginatedRequest":Ljavax/sip/message/Request;
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v2, v3, :cond_4

    .line 144
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->clone()Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "reoriginatedRequest":Ljavax/sip/message/Request;
    check-cast v24, Ljavax/sip/message/Request;

    .line 169
    .restart local v24    # "reoriginatedRequest":Ljavax/sip/message/Request;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->removeBranchID(Ljavax/sip/message/Request;)V

    .line 171
    if-eqz p1, :cond_3

    if-nez v24, :cond_6

    .line 172
    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "A null argument was passed to handle challenge."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .end local v17    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v24    # "reoriginatedRequest":Ljavax/sip/message/Request;
    :catch_0
    move-exception v18

    .line 272
    .local v18, "ex":Ljavax/sip/SipException;
    throw v18

    .line 151
    .end local v18    # "ex":Ljavax/sip/SipException;
    .restart local v17    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v24    # "reoriginatedRequest":Ljavax/sip/message/Request;
    :cond_4
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v24

    .line 153
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaderNames()Ljava/util/ListIterator;

    move-result-object v20

    .line 154
    .local v20, "headerNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 156
    .local v19, "headerName":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 157
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v22

    .line 158
    .local v22, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    invoke-interface/range {v22 .. v22}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 273
    .end local v17    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v19    # "headerName":Ljava/lang/String;
    .end local v20    # "headerNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    .end local v24    # "reoriginatedRequest":Ljavax/sip/message/Request;
    :catch_1
    move-exception v18

    .line 274
    .local v18, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Unexpected exception "

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 275
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Unexpected exception "

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 175
    .end local v18    # "ex":Ljava/lang/Exception;
    .restart local v17    # "challengedRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v24    # "reoriginatedRequest":Ljavax/sip/message/Request;
    :cond_6
    const/4 v14, 0x0

    .line 177
    .local v14, "authHeaders":Ljava/util/ListIterator;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_7

    .line 178
    const-string v2, "WWW-Authenticate"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v14

    .line 185
    :goto_1
    if-nez v14, :cond_9

    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not find WWWAuthenticate or ProxyAuthenticate headers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x197

    if-ne v2, v3, :cond_8

    .line 180
    const-string v2, "Proxy-Authenticate"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v14

    goto :goto_1

    .line 182
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unexpected status code "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_9
    const-string v2, "Authorization"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 193
    const-string v2, "Proxy-Authorization"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 199
    const-string v2, "CSeq"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v16

    check-cast v16, Ljavax/sip/header/CSeqHeader;
    :try_end_2
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    .local v16, "cSeq":Ljavax/sip/header/CSeqHeader;
    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 211
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v2

    if-nez v2, :cond_b

    .line 212
    move-object/from16 v0, p2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v2, v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v21

    .line 213
    .local v21, "hop":Ljavax/sip/address/Hop;
    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v28

    check-cast v28, Ljavax/sip/address/SipURI;

    .line 215
    .local v28, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface/range {v21 .. v21}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v28 .. v28}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/SipStackImpl;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/address/Router;->getOutboundProxy()Ljavax/sip/address/Hop;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 218
    invoke-interface/range {v21 .. v21}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljavax/sip/address/SipURI;->setMAddrParam(Ljava/lang/String;)V

    .line 219
    :cond_a
    invoke-interface/range {v21 .. v21}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    invoke-interface/range {v21 .. v21}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 221
    .end local v21    # "hop":Ljavax/sip/address/Hop;
    .end local v28    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_b
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v26

    .line 224
    .local v26, "retryTran":Ljavax/sip/ClientTransaction;
    const/4 v6, 0x0

    .line 225
    .local v6, "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v25

    check-cast v25, Ljavax/sip/address/SipURI;

    .line 226
    .local v25, "requestUri":Ljavax/sip/address/SipURI;
    :goto_2
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 227
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    check-cast v6, Ljavax/sip/header/WWWAuthenticateHeader;

    .line 228
    .restart local v6    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface {v6}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v23

    .line 229
    .local v23, "realm":Ljava/lang/String;
    const/4 v15, 0x0

    .line 231
    .local v15, "authorization":Ljavax/sip/header/AuthorizationHeader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    instance-of v2, v2, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    if-eqz v2, :cond_f

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    check-cast v2, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v2, v0, v1}, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;->getCredentialHash(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    move-result-object v7

    .line 234
    .local v7, "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v29

    .line 235
    .local v29, "uri":Ljavax/sip/address/URI;
    invoke-interface {v7}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getSipDomain()Ljava/lang/String;

    move-result-object v27

    .line 236
    .local v27, "sipDomain":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v5, ""

    :goto_3
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v15

    .line 255
    .end local v7    # "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .end local v29    # "uri":Ljavax/sip/address/URI;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created authorization header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 259
    :cond_c
    if-eqz p4, :cond_d

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    move-object/from16 v0, v27

    move/from16 v1, p4

    invoke-virtual {v2, v0, v15, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->cacheAuthorizationHeader(Ljava/lang/String;Ljavax/sip/header/AuthorizationHeader;I)V

    .line 263
    :cond_d
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    goto/16 :goto_2

    .line 202
    .end local v6    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v15    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v23    # "realm":Ljava/lang/String;
    .end local v25    # "requestUri":Ljavax/sip/address/SipURI;
    .end local v26    # "retryTran":Ljavax/sip/ClientTransaction;
    .end local v27    # "sipDomain":Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 203
    .local v18, "ex":Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid CSeq -- could not increment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    .end local v18    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v6    # "authHeader":Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v7    # "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .restart local v15    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .restart local v23    # "realm":Ljava/lang/String;
    .restart local v25    # "requestUri":Ljavax/sip/address/SipURI;
    .restart local v26    # "retryTran":Ljavax/sip/ClientTransaction;
    .restart local v27    # "sipDomain":Ljava/lang/String;
    .restart local v29    # "uri":Ljavax/sip/address/URI;
    :cond_e
    new-instance v5, Ljava/lang/String;

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_3

    .line 241
    .end local v7    # "credHash":Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .end local v27    # "sipDomain":Ljava/lang/String;
    .end local v29    # "uri":Ljavax/sip/address/URI;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    check-cast v2, Lgov/nist/javax/sip/clientauthutils/AccountManager;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v2, v0, v1}, Lgov/nist/javax/sip/clientauthutils/AccountManager;->getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    move-result-object v13

    .line 242
    .local v13, "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    invoke-interface {v13}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getSipDomain()Ljava/lang/String;

    move-result-object v27

    .line 243
    .restart local v27    # "sipDomain":Ljava/lang/String;
    if-nez v13, :cond_10

    .line 244
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Cannot find user creds for the given user name and realm"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_10
    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    const-string v11, ""

    :goto_5
    move-object/from16 v8, p0

    move-object v12, v6

    invoke-direct/range {v8 .. v13}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v15

    goto/16 :goto_4

    :cond_11
    new-instance v11, Ljava/lang/String;

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    .line 266
    .end local v13    # "userCreds":Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    .end local v15    # "authorization":Ljavax/sip/header/AuthorizationHeader;
    .end local v23    # "realm":Ljava/lang/String;
    .end local v27    # "sipDomain":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning authorization transaction."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/sip/SipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 270
    :cond_13
    return-object v26
.end method

.method public removeCachedAuthenticationHeaders(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null callId argument "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->removeAuthenticationHeader(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public setAuthenticationHeaders(Ljavax/sip/message/Request;)V
    .locals 8
    .param p1, "request"    # Ljavax/sip/message/Request;

    .prologue
    .line 436
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    .line 438
    .local v4, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "callId":Ljava/lang/String;
    const-string v5, "Authorization"

    invoke-interface {p1, v5}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 441
    iget-object v5, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v5, v2}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->getCachedAuthorizationHeaders(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 443
    .local v1, "authHeaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/sip/header/AuthorizationHeader;>;"
    if-nez v1, :cond_1

    .line 444
    iget-object v5, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    iget-object v5, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find authentication headers for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void

    .line 450
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/AuthorizationHeader;

    .line 451
    .local v0, "authHeader":Ljavax/sip/header/AuthorizationHeader;
    invoke-interface {p1, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    goto :goto_0
.end method

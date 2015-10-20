.class public interface abstract Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
.super Ljava/lang/Object;
.source "AuthenticationHelper.java"


# virtual methods
.method public abstract handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract removeCachedAuthenticationHeaders(Ljava/lang/String;)V
.end method

.method public abstract setAuthenticationHeaders(Ljavax/sip/message/Request;)V
.end method

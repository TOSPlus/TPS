.class public interface abstract Lgov/nist/javax/sip/TransactionExt;
.super Ljava/lang/Object;
.source "TransactionExt.java"

# interfaces
.implements Ljavax/sip/Transaction;


# virtual methods
.method public abstract getCipherSuite()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getLocalCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract getPeerAddress()Ljava/lang/String;
.end method

.method public abstract getPeerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract getPeerPort()I
.end method

.method public abstract getPort()I
.end method

.method public abstract getSipProvider()Ljavax/sip/SipProvider;
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method

.class public interface abstract Ljavax/sip/SipStack;
.super Ljava/lang/Object;
.source "SipStack.java"


# virtual methods
.method public abstract createListeningPoint(ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract deleteListeningPoint(Ljavax/sip/ListeningPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract deleteSipProvider(Ljavax/sip/SipProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract getDialogs()Ljava/util/Collection;
.end method

.method public abstract getIPAddress()Ljava/lang/String;
.end method

.method public abstract getListeningPoints()Ljava/util/Iterator;
.end method

.method public abstract getRouter()Ljavax/sip/address/Router;
.end method

.method public abstract getSipProviders()Ljava/util/Iterator;
.end method

.method public abstract getStackName()Ljava/lang/String;
.end method

.method public abstract isRetransmissionFilterActive()Z
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ProviderDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

.class public interface abstract Ljavax/sip/ClientTransaction;
.super Ljava/lang/Object;
.source "ClientTransaction.java"

# interfaces
.implements Ljavax/sip/Transaction;


# virtual methods
.method public abstract alertIfStillInCallingStateBy(I)V
.end method

.method public abstract createAck()Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract createCancel()Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract getNextHop()Ljavax/sip/address/Hop;
.end method

.method public abstract sendRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract setNotifyOnRetransmit(Z)V
.end method

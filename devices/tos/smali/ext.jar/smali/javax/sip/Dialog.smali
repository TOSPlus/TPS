.class public interface abstract Ljavax/sip/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract createAck(J)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract createPrack(Ljavax/sip/message/Response;)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/DialogDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract createReliableProvisionalResponse(I)Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract delete()V
.end method

.method public abstract getApplicationData()Ljava/lang/Object;
.end method

.method public abstract getCallId()Ljavax/sip/header/CallIdHeader;
.end method

.method public abstract getDialogId()Ljava/lang/String;
.end method

.method public abstract getFirstTransaction()Ljavax/sip/Transaction;
.end method

.method public abstract getLocalParty()Ljavax/sip/address/Address;
.end method

.method public abstract getLocalSeqNumber()J
.end method

.method public abstract getLocalSequenceNumber()I
.end method

.method public abstract getLocalTag()Ljava/lang/String;
.end method

.method public abstract getRemoteParty()Ljavax/sip/address/Address;
.end method

.method public abstract getRemoteSeqNumber()J
.end method

.method public abstract getRemoteSequenceNumber()I
.end method

.method public abstract getRemoteTag()Ljava/lang/String;
.end method

.method public abstract getRemoteTarget()Ljavax/sip/address/Address;
.end method

.method public abstract getRouteSet()Ljava/util/Iterator;
.end method

.method public abstract getSipProvider()Ljavax/sip/SipProvider;
.end method

.method public abstract getState()Ljavax/sip/DialogState;
.end method

.method public abstract incrementLocalSequenceNumber()V
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isServer()Z
.end method

.method public abstract sendAck(Ljavax/sip/message/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract sendRequest(Ljavax/sip/ClientTransaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract setApplicationData(Ljava/lang/Object;)V
.end method

.method public abstract setBackToBackUserAgent()V
.end method

.method public abstract terminateOnBye(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

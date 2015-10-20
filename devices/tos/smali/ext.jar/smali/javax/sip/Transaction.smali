.class public interface abstract Ljavax/sip/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getApplicationData()Ljava/lang/Object;
.end method

.method public abstract getBranchId()Ljava/lang/String;
.end method

.method public abstract getDialog()Ljavax/sip/Dialog;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPeerAddress()Ljava/lang/String;
.end method

.method public abstract getPeerPort()I
.end method

.method public abstract getPort()I
.end method

.method public abstract getRequest()Ljavax/sip/message/Request;
.end method

.method public abstract getRetransmitTimer()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract getSipProvider()Ljavax/sip/SipProvider;
.end method

.method public abstract getState()Ljavax/sip/TransactionState;
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method

.method public abstract setApplicationData(Ljava/lang/Object;)V
.end method

.method public abstract setRetransmitTimer(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract terminate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

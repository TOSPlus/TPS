.class public interface abstract Ljavax/sip/SipProvider;
.super Ljava/lang/Object;
.source "SipProvider.java"


# virtual methods
.method public abstract addListeningPoint(Ljavax/sip/ListeningPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract addSipListener(Ljavax/sip/SipListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation
.end method

.method public abstract getListeningPoint()Ljavax/sip/ListeningPoint;
.end method

.method public abstract getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;
.end method

.method public abstract getListeningPoints()[Ljavax/sip/ListeningPoint;
.end method

.method public abstract getNewCallId()Ljavax/sip/header/CallIdHeader;
.end method

.method public abstract getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation
.end method

.method public abstract getNewDialog(Ljavax/sip/Transaction;)Ljavax/sip/Dialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionAlreadyExistsException;,
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation
.end method

.method public abstract getSipStack()Ljavax/sip/SipStack;
.end method

.method public abstract isAutomaticDialogSupportEnabled()Z
.end method

.method public abstract removeListeningPoint(Ljavax/sip/ListeningPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract removeListeningPoints()V
.end method

.method public abstract removeSipListener(Ljavax/sip/SipListener;)V
.end method

.method public abstract sendRequest(Ljavax/sip/message/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract sendResponse(Ljavax/sip/message/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract setAutomaticDialogSupportEnabled(Z)V
.end method

.method public abstract setListeningPoint(Ljavax/sip/ListeningPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

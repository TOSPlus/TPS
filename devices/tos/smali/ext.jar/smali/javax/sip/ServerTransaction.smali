.class public interface abstract Ljavax/sip/ServerTransaction;
.super Ljava/lang/Object;
.source "ServerTransaction.java"

# interfaces
.implements Ljavax/sip/Transaction;


# virtual methods
.method public abstract enableRetransmissionAlerts()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract getCanceledInviteTransaction()Ljavax/sip/ServerTransaction;
.end method

.method public abstract sendResponse(Ljavax/sip/message/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

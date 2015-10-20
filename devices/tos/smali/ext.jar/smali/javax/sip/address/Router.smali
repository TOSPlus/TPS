.class public interface abstract Ljavax/sip/address/Router;
.super Ljava/lang/Object;
.source "Router.java"


# virtual methods
.method public abstract getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract getNextHops(Ljavax/sip/message/Request;)Ljava/util/ListIterator;
.end method

.method public abstract getOutboundProxy()Ljavax/sip/address/Hop;
.end method

.class public interface abstract Ljavax/sip/header/EventHeader;
.super Ljava/lang/Object;
.source "EventHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Event"


# virtual methods
.method public abstract getEventId()Ljava/lang/String;
.end method

.method public abstract getEventType()Ljava/lang/String;
.end method

.method public abstract setEventId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setEventType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

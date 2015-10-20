.class public interface abstract Ljavax/sip/header/ReasonHeader;
.super Ljava/lang/Object;
.source "ReasonHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Reason"


# virtual methods
.method public abstract getCause()I
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract setCause(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setProtocol(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.class public interface abstract Ljavax/sip/header/RAckHeader;
.super Ljava/lang/Object;
.source "RAckHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "RAck"


# virtual methods
.method public abstract getCSeqNumber()I
.end method

.method public abstract getCSequenceNumber()J
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getRSeqNumber()I
.end method

.method public abstract getRSequenceNumber()J
.end method

.method public abstract setCSeqNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setCSequenceNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setMethod(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setRSeqNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setRSequenceNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

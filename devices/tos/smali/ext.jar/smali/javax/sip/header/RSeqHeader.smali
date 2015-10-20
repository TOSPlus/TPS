.class public interface abstract Ljavax/sip/header/RSeqHeader;
.super Ljava/lang/Object;
.source "RSeqHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "RSeq"


# virtual methods
.method public abstract getSeqNumber()J
.end method

.method public abstract getSequenceNumber()I
.end method

.method public abstract setSeqNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setSequenceNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

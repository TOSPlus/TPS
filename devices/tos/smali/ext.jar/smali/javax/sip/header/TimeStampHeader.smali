.class public interface abstract Ljavax/sip/header/TimeStampHeader;
.super Ljava/lang/Object;
.source "TimeStampHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "Timestamp"


# virtual methods
.method public abstract getDelay()F
.end method

.method public abstract getTime()J
.end method

.method public abstract getTimeDelay()I
.end method

.method public abstract getTimeStamp()F
.end method

.method public abstract hasDelay()Z
.end method

.method public abstract removeDelay()V
.end method

.method public abstract setDelay(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setTime(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setTimeDelay(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setTimeStamp(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

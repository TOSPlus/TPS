.class public interface abstract Ljavax/sip/header/RetryAfterHeader;
.super Ljava/lang/Object;
.source "RetryAfterHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Retry-After"


# virtual methods
.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getRetryAfter()I
.end method

.method public abstract hasComment()Z
.end method

.method public abstract removeComment()V
.end method

.method public abstract removeDuration()V
.end method

.method public abstract setComment(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setRetryAfter(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

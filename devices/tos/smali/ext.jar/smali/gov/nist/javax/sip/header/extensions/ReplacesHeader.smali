.class public interface abstract Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
.super Ljava/lang/Object;
.source "ReplacesHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Replaces"


# virtual methods
.method public abstract getCallId()Ljava/lang/String;
.end method

.method public abstract getFromTag()Ljava/lang/String;
.end method

.method public abstract getToTag()Ljava/lang/String;
.end method

.method public abstract setCallId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setFromTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setToTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

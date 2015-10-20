.class public interface abstract Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
.super Ljava/lang/Object;
.source "ReferencesHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final CHAIN:Ljava/lang/String; = "chain"

.field public static final INQUIRY:Ljava/lang/String; = "inquiry"

.field public static final NAME:Ljava/lang/String; = "References"

.field public static final REFER:Ljava/lang/String; = "refer"

.field public static final REL:Ljava/lang/String; = "rel"

.field public static final SEQUEL:Ljava/lang/String; = "sequel"

.field public static final SERVICE:Ljava/lang/String; = "service"

.field public static final XFER:Ljava/lang/String; = "xfer"


# virtual methods
.method public abstract getCallId()Ljava/lang/String;
.end method

.method public abstract getRel()Ljava/lang/String;
.end method

.method public abstract setCallId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setRel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

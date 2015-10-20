.class public interface abstract Ljavax/sip/header/SubscriptionStateHeader;
.super Ljava/lang/Object;
.source "SubscriptionStateHeader.java"

# interfaces
.implements Ljavax/sip/header/ExpiresHeader;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final ACTIVE:Ljava/lang/String; = "Active"

.field public static final DEACTIVATED:Ljava/lang/String; = "Deactivated"

.field public static final GIVE_UP:Ljava/lang/String; = "Give-Up"

.field public static final NAME:Ljava/lang/String; = "Subscription-State"

.field public static final NO_RESOURCE:Ljava/lang/String; = "No-Resource"

.field public static final PENDING:Ljava/lang/String; = "Pending"

.field public static final PROBATION:Ljava/lang/String; = "Probation"

.field public static final REJECTED:Ljava/lang/String; = "Rejected"

.field public static final TERMINATED:Ljava/lang/String; = "Terminated"

.field public static final TIMEOUT:Ljava/lang/String; = "Timeout"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"


# virtual methods
.method public abstract getReasonCode()Ljava/lang/String;
.end method

.method public abstract getRetryAfter()I
.end method

.method public abstract getState()Ljava/lang/String;
.end method

.method public abstract setReasonCode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
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

.method public abstract setState(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

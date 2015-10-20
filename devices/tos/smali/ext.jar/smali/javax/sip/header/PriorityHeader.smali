.class public interface abstract Ljavax/sip/header/PriorityHeader;
.super Ljava/lang/Object;
.source "PriorityHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final EMERGENCY:Ljava/lang/String; = "Emergency"

.field public static final NAME:Ljava/lang/String; = "Priority"

.field public static final NON_URGENT:Ljava/lang/String; = "Non-Urgent"

.field public static final NORMAL:Ljava/lang/String; = "Normal"

.field public static final URGENT:Ljava/lang/String; = "Urgent"


# virtual methods
.method public abstract getPriority()Ljava/lang/String;
.end method

.method public abstract setPriority(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.class public Lcom/android/commands/monkey/MonkeyNoopEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyNoopEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 7
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    const/4 v2, 0x1

    .line 37
    if-le p3, v2, :cond_a

    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NOOP"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    :cond_a
    return v2
.end method

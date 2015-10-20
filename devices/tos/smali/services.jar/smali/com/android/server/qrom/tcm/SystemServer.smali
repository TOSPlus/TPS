.class public Lcom/android/server/qrom/tcm/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "tcmstub"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 161
    :try_start_0
    const-string v2, "tcmstub"

    const-string v3, "QRom SystemServer main sleep"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    new-instance v1, Lcom/android/server/qrom/tcm/ServerThread;

    invoke-direct {v1}, Lcom/android/server/qrom/tcm/ServerThread;-><init>()V

    .line 170
    .local v1, "thr":Lcom/android/server/qrom/tcm/ServerThread;
    invoke-virtual {v1}, Lcom/android/server/qrom/tcm/ServerThread;->initAndLoop()V

    .line 171
    return-void

    .line 163
    .end local v1    # "thr":Lcom/android/server/qrom/tcm/ServerThread;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "tcmstub"

    const-string v3, "QRom SystemServer InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

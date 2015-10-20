.class public Lcom/android/server/qrom/tcm/QROMProcessBridge;
.super Ljava/lang/Object;
.source "QROMProcessBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "tcmstub"

.field private static mQROMProcessBridge:Lcom/android/server/qrom/tcm/QROMProcessBridge;


# instance fields
.field private mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/qrom/tcm/QROMProcessBridge;->mQROMProcessBridge:Lcom/android/server/qrom/tcm/QROMProcessBridge;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/qrom/tcm/QROMProcessBridge;->mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    .line 40
    const-string v1, "tcmstub"

    const-string v2, "QROMProcessBridge construcet 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v1, p0, Lcom/android/server/qrom/tcm/QROMProcessBridge;->mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    if-nez v1, :cond_0

    .line 42
    const-string v1, "tcmstub"

    const-string v2, "QROMProcessBridge construcet 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v1, Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    invoke-direct {v1}, Lcom/android/server/qrom/tcm/QROMProcessReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/server/qrom/tcm/QROMProcessBridge;->mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, "recevierFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "com.tencent.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "qrom.compoent.tcm.action.req"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/android/server/qrom/tcm/QROMProcessBridge;->mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    const-string v1, "tcmstub"

    const-string v2, "QROMProcessBridge construcet 3"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0    # "recevierFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public static create()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "tcmstub"

    const-string v1, "Java QROMProcessBridge get call"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

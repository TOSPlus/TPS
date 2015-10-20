.class final Landroid/app/ContextImpl$45;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 610
    const-string/jumbo v2, "qrom_framework_tcm"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 611
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/qrom/tcm/IQRomTCMService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/qrom/tcm/IQRomTCMService;

    move-result-object v1

    .line 612
    .local v1, "gIQRomTCMService":Landroid/qrom/tcm/IQRomTCMService;
    return-object v1
.end method

.class public abstract Lcom/tencent/qrom/app/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAlert:Lcom/tencent/qrom/app/AlertController;

.field protected mAlertParams:Lcom/tencent/qrom/app/AlertController$AlertParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/tencent/qrom/app/AlertActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/app/AlertActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertActivity;->finish()V

    .line 60
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertActivity;->finish()V

    .line 68
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 114
    invoke-virtual {p0, v0, v0}, Lcom/tencent/qrom/app/AlertActivity;->overridePendingTransition(II)V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/tencent/qrom/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertActivity;->mAlert:Lcom/tencent/qrom/app/AlertController;

    .line 55
    new-instance v0, Lcom/tencent/qrom/app/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertActivity;->mAlertParams:Lcom/tencent/qrom/app/AlertController$AlertParams;

    .line 56
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertActivity;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertActivity;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/qrom/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return v0

    .line 101
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertActivity;->finish()V

    goto :goto_0

    .line 107
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setBottomDialog(Z)V
    .locals 2
    .param p1, "isBottom"    # Z

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/tencent/qrom/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Z)V

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertActivity;->mAlert:Lcom/tencent/qrom/app/AlertController;

    .line 73
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 75
    :cond_0
    return-void
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertActivity;->mAlertParams:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertActivity;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertController$AlertParams;->apply(Lcom/tencent/qrom/app/AlertController;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertActivity;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertController;->installContent()V

    .line 87
    return-void
.end method

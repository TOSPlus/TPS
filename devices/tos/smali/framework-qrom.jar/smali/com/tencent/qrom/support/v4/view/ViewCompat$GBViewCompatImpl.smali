.class Lcom/tencent/qrom/support/v4/view/ViewCompat$GBViewCompatImpl;
.super Lcom/tencent/qrom/support/v4/view/ViewCompat$BaseViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/tencent/qrom/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverScrollMode(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-static {p1}, Lcom/tencent/qrom/support/v4/view/ViewCompatGingerbread;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 91
    invoke-static {p1, p2}, Lcom/tencent/qrom/support/v4/view/ViewCompatGingerbread;->setOverScrollMode(Landroid/view/View;I)V

    .line 92
    return-void
.end method

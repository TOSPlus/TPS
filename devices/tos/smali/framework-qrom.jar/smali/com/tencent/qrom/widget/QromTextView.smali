.class public Lcom/tencent/qrom/widget/QromTextView;
.super Landroid/widget/TextView;
.source "QromTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QromTextView"


# instance fields
.field private mQromIsHandleView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/QromTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/QromTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/QromTextView;->mQromIsHandleView:Z

    .line 24
    return-void
.end method


# virtual methods
.method public qromGetHandleViewFlag()Z
    .locals 3

    .prologue
    .line 36
    const-string v0, "QromTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qromGetHandleViewFlag|mQromIsHandleView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/qrom/widget/QromTextView;->mQromIsHandleView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/QromTextView;->mQromIsHandleView:Z

    return v0
.end method

.method public qromSetHandleViewFlag(Z)V
    .locals 3
    .param p1, "isHandleView"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/QromTextView;->mQromIsHandleView:Z

    .line 31
    const-string v0, "QromTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qromSetHandleViewFlag|isHandleView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

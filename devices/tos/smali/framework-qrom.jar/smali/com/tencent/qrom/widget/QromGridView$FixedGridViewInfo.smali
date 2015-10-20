.class Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;
.super Ljava/lang/Object;
.source "QromGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/QromGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedGridViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field public view:Landroid/view/View;

.field public viewContainer:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/QromGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/QromGridView$1;

    .prologue
    .line 2372
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromGridView$FixedGridViewInfo;-><init>()V

    return-void
.end method

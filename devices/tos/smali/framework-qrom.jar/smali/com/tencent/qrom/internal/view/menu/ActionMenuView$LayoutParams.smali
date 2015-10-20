.class public Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 601
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 603
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .prologue
    .line 606
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 607
    iput-boolean p3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 608
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 592
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 593
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;)V
    .locals 1
    .param p1, "other"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 597
    iget-boolean v0, p1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 598
    return-void
.end method

.class Landroid/widget/QromSearchView$6;
.super Ljava/lang/Object;
.source "QromSearchView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/QromSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QromSearchView;


# direct methods
.method constructor <init>(Landroid/widget/QromSearchView;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Landroid/widget/QromSearchView$6;->this$0:Landroid/widget/QromSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 525
    iget-object v0, p0, Landroid/widget/QromSearchView$6;->this$0:Landroid/widget/QromSearchView;

    # invokes: Landroid/widget/QromSearchView;->adjustDropDownSizeAndPosition()V
    invoke-static {v0}, Landroid/widget/QromSearchView;->access$500(Landroid/widget/QromSearchView;)V

    .line 526
    return-void
.end method

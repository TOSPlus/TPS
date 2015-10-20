.class Landroid/widget/QromTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "QromTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Landroid/widget/QromTabWidget;


# direct methods
.method private constructor <init>(Landroid/widget/QromTabWidget;I)V
    .locals 0
    .param p2, "tabIndex"    # I

    .prologue
    .line 533
    iput-object p1, p0, Landroid/widget/QromTabWidget$TabClickListener;->this$0:Landroid/widget/QromTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput p2, p0, Landroid/widget/QromTabWidget$TabClickListener;->mTabIndex:I

    .line 535
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/QromTabWidget;ILandroid/widget/QromTabWidget$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/QromTabWidget;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/widget/QromTabWidget$1;

    .prologue
    .line 529
    invoke-direct {p0, p1, p2}, Landroid/widget/QromTabWidget$TabClickListener;-><init>(Landroid/widget/QromTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 538
    iget-object v0, p0, Landroid/widget/QromTabWidget$TabClickListener;->this$0:Landroid/widget/QromTabWidget;

    # getter for: Landroid/widget/QromTabWidget;->mSelectionChangedListener:Landroid/widget/QromTabWidget$OnTabSelectionChanged;
    invoke-static {v0}, Landroid/widget/QromTabWidget;->access$100(Landroid/widget/QromTabWidget;)Landroid/widget/QromTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Landroid/widget/QromTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/widget/QromTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 539
    return-void
.end method

.class Landroid/widget/QromTabHost$3;
.super Ljava/lang/Object;
.source "QromTabHost.java"

# interfaces
.implements Landroid/widget/QromTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/QromTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method constructor <init>(Landroid/widget/QromTabHost;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Landroid/widget/QromTabHost$3;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .param p1, "tabIndex"    # I
    .param p2, "clicked"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Landroid/widget/QromTabHost$3;->this$0:Landroid/widget/QromTabHost;

    invoke-virtual {v0, p1}, Landroid/widget/QromTabHost;->setCurrentTab(I)V

    .line 283
    if-eqz p2, :cond_0

    .line 284
    iget-object v0, p0, Landroid/widget/QromTabHost$3;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$1000(Landroid/widget/QromTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 286
    :cond_0
    return-void
.end method

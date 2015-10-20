.class Landroid/widget/QromTabHost$ViewIdContentStrategy;
.super Ljava/lang/Object;
.source "QromTabHost.java"

# interfaces
.implements Landroid/widget/QromTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method private constructor <init>(Landroid/widget/QromTabHost;I)V
    .locals 3
    .param p2, "viewId"    # I

    .prologue
    .line 934
    iput-object p1, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    # getter for: Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {p1}, Landroid/widget/QromTabHost;->access$1000(Landroid/widget/QromTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    .line 936
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 942
    return-void

    .line 939
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create tab content because could not find view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/widget/QromTabHost;ILandroid/widget/QromTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/QromTabHost;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/widget/QromTabHost$1;

    .prologue
    .line 930
    invoke-direct {p0, p1, p2}, Landroid/widget/QromTabHost$ViewIdContentStrategy;-><init>(Landroid/widget/QromTabHost;I)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 946
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    return-void
.end method

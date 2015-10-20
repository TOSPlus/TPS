.class Landroid/widget/QromTabHost$ViewIdContentStrategy2;
.super Landroid/app/Fragment;
.source "QromTabHost.java"

# interfaces
.implements Landroid/widget/QromTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdContentStrategy2"
.end annotation


# instance fields
.field private mFragment:Landroid/app/Fragment;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method private constructor <init>(Landroid/widget/QromTabHost;ILjava/lang/String;)V
    .locals 4
    .param p2, "viewId"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 1040
    iput-object p1, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 1041
    # getter for: Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {p1}, Landroid/widget/QromTabHost;->access$1000(Landroid/widget/QromTabHost;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->mView:Landroid/view/View;

    .line 1042
    iget-object v1, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1045
    iget-object v1, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1046
    new-instance v1, Landroid/widget/QromTabHost$ViewIdContentStrategy2$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/QromTabHost$ViewIdContentStrategy2$1;-><init>(Landroid/widget/QromTabHost$ViewIdContentStrategy2;Landroid/widget/QromTabHost;)V

    iput-object v1, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->mFragment:Landroid/app/Fragment;

    .line 1053
    # getter for: Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {p1}, Landroid/widget/QromTabHost;->access$1500(Landroid/widget/QromTabHost;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1054
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7a090103

    iget-object v2, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1056
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1062
    return-void

    .line 1059
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create tab content because could not find view with id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/widget/QromTabHost;ILjava/lang/String;Landroid/widget/QromTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/QromTabHost;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/widget/QromTabHost$1;

    .prologue
    .line 1035
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QromTabHost$ViewIdContentStrategy2;-><init>(Landroid/widget/QromTabHost;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/QromTabHost$ViewIdContentStrategy2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabHost$ViewIdContentStrategy2;

    .prologue
    .line 1035
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->mView:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 0

    .prologue
    .line 1070
    return-void
.end method

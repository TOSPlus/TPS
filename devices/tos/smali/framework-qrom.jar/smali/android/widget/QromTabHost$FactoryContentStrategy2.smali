.class Landroid/widget/QromTabHost$FactoryContentStrategy2;
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
    name = "FactoryContentStrategy2"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/QromTabHost$TabContentFactory;

.field private mFragment:Landroid/widget/FactoryContentStrategy2Fragment;

.field private mTabContent:Landroid/view/View;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method public constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/widget/QromTabHost$TabContentFactory;)V
    .locals 3
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/widget/QromTabHost$TabContentFactory;

    .prologue
    .line 1107
    iput-object p1, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput-object p2, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->mTag:Ljava/lang/String;

    .line 1109
    iput-object p3, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->mFactory:Landroid/widget/QromTabHost$TabContentFactory;

    .line 1111
    iget-object v1, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->mFactory:Landroid/widget/QromTabHost$TabContentFactory;

    iget-object v2, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/widget/QromTabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->mTabContent:Landroid/view/View;

    .line 1113
    new-instance v1, Landroid/widget/FactoryContentStrategy2Fragment;

    iget-object v2, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->mTabContent:Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/widget/FactoryContentStrategy2Fragment;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->mFragment:Landroid/widget/FactoryContentStrategy2Fragment;

    .line 1115
    # getter for: Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {p1}, Landroid/widget/QromTabHost;->access$1500(Landroid/widget/QromTabHost;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1116
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7a090103

    iget-object v2, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->mFragment:Landroid/widget/FactoryContentStrategy2Fragment;

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1118
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1120
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Landroid/widget/QromTabHost$FactoryContentStrategy2;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 0

    .prologue
    .line 1128
    return-void
.end method

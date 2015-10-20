.class Landroid/widget/QromTabHost$FactoryContentStrategy;
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
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/QromTabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method public constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/CharSequence;Landroid/widget/QromTabHost$TabContentFactory;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/CharSequence;
    .param p3, "factory"    # Landroid/widget/QromTabHost$TabContentFactory;

    .prologue
    .line 962
    iput-object p1, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-object p2, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 964
    iput-object p3, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->mFactory:Landroid/widget/QromTabHost$TabContentFactory;

    .line 965
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->mFactory:Landroid/widget/QromTabHost$TabContentFactory;

    iget-object v1, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/QromTabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 971
    :cond_0
    iget-object v0, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Landroid/widget/QromTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 977
    return-void
.end method

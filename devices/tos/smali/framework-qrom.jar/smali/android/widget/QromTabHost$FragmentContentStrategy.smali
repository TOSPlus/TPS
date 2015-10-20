.class Landroid/widget/QromTabHost$FragmentContentStrategy;
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
    name = "FragmentContentStrategy"
.end annotation


# instance fields
.field private mFragment:Landroid/app/Fragment;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method private constructor <init>(Landroid/widget/QromTabHost;Landroid/app/Fragment;Ljava/lang/String;Landroid/widget/QromTabHost;)V
    .locals 2
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "tabHost"    # Landroid/widget/QromTabHost;

    .prologue
    .line 1080
    iput-object p1, p0, Landroid/widget/QromTabHost$FragmentContentStrategy;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iput-object p2, p0, Landroid/widget/QromTabHost$FragmentContentStrategy;->mFragment:Landroid/app/Fragment;

    .line 1082
    # getter for: Landroid/widget/QromTabHost;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {p1}, Landroid/widget/QromTabHost;->access$1500(Landroid/widget/QromTabHost;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1083
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7a090103

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1085
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1087
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/QromTabHost;Landroid/app/Fragment;Ljava/lang/String;Landroid/widget/QromTabHost;Landroid/widget/QromTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/QromTabHost;
    .param p2, "x1"    # Landroid/app/Fragment;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/widget/QromTabHost;
    .param p5, "x4"    # Landroid/widget/QromTabHost$1;

    .prologue
    .line 1076
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/QromTabHost$FragmentContentStrategy;-><init>(Landroid/widget/QromTabHost;Landroid/app/Fragment;Ljava/lang/String;Landroid/widget/QromTabHost;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/widget/QromTabHost$FragmentContentStrategy;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public tabClosed()V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

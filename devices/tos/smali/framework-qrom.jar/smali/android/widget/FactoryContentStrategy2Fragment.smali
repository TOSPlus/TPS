.class public Landroid/widget/FactoryContentStrategy2Fragment;
.super Landroid/app/Fragment;
.source "FactoryContentStrategy2Fragment.java"


# instance fields
.field private mTabContent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "tabContent"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/widget/FactoryContentStrategy2Fragment;->mTabContent:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    iget-object v0, p0, Landroid/widget/FactoryContentStrategy2Fragment;->mTabContent:Landroid/view/View;

    return-object v0
.end method

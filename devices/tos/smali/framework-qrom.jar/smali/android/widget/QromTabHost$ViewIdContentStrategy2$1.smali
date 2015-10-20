.class Landroid/widget/QromTabHost$ViewIdContentStrategy2$1;
.super Landroid/app/Fragment;
.source "QromTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/QromTabHost$ViewIdContentStrategy2;-><init>(Landroid/widget/QromTabHost;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/QromTabHost$ViewIdContentStrategy2;

.field final synthetic val$this$0:Landroid/widget/QromTabHost;


# direct methods
.method constructor <init>(Landroid/widget/QromTabHost$ViewIdContentStrategy2;Landroid/widget/QromTabHost;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2$1;->this$1:Landroid/widget/QromTabHost$ViewIdContentStrategy2;

    iput-object p2, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2$1;->val$this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIdContentStrategy2$1;->this$1:Landroid/widget/QromTabHost$ViewIdContentStrategy2;

    # getter for: Landroid/widget/QromTabHost$ViewIdContentStrategy2;->mView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/QromTabHost$ViewIdContentStrategy2;->access$2100(Landroid/widget/QromTabHost$ViewIdContentStrategy2;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

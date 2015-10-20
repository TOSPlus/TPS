.class Landroid/widget/QromTabHost$2;
.super Ljava/lang/Object;
.source "QromTabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 262
    iput-object p1, p0, Landroid/widget/QromTabHost$2;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 264
    sparse-switch p2, :sswitch_data_0

    .line 274
    iget-object v0, p0, Landroid/widget/QromTabHost$2;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$1000(Landroid/widget/QromTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 275
    iget-object v0, p0, Landroid/widget/QromTabHost$2;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$1000(Landroid/widget/QromTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 271
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

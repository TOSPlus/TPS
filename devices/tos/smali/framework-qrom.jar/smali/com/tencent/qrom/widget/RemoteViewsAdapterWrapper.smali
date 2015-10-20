.class public Lcom/tencent/qrom/widget/RemoteViewsAdapterWrapper;
.super Lcom/tencent/qrom/widget/RemoteViewsAdapter;
.source "RemoteViewsAdapterWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    .line 20
    return-void
.end method


# virtual methods
.method public superNotifyDataSetChanged()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 25
    return-void
.end method

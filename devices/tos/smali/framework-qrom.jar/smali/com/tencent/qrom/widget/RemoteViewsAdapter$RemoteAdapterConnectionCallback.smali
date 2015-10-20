.class public interface abstract Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteAdapterConnectionCallback"
.end annotation


# virtual methods
.method public abstract deferNotifyDataSetChanged()V
.end method

.method public abstract onRemoteAdapterConnected()Z
.end method

.method public abstract onRemoteAdapterDisconnected()V
.end method

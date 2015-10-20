.class public interface abstract Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# virtual methods
.method public abstract onScroll(Lcom/tencent/qrom/widget/AbsListView;III)V
.end method

.method public abstract onScrollStateChanged(Lcom/tencent/qrom/widget/AbsListView;I)V
.end method

.class public Lcom/tencent/qrom/app/AlertController$RecycleListView;
.super Lcom/tencent/qrom/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1262
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1266
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1270
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1271
    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 1275
    iget-boolean v0, p0, Lcom/tencent/qrom/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method

.class Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "QromResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field iconView:Landroid/widget/ImageView;

.field settingView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;Lcom/tencent/qrom/app/QromResolverActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;
    .param p2, "x1"    # Lcom/tencent/qrom/app/QromResolverActivity$1;

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$ViewHolder;-><init>(Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;)V

    return-void
.end method

.class final Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "TencentResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/TencentResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/tencent/qrom/app/TencentResolverActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/TencentResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pInfo"    # Ljava/lang/CharSequence;
    .param p5, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p2, p0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 498
    iput-object p3, p0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 499
    iput-object p4, p0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 500
    iput-object p5, p0, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 501
    return-void
.end method

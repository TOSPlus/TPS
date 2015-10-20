.class final Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "QromResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayBitmap:Landroid/graphics/Bitmap;

.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/tencent/qrom/app/QromResolverActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pInfo"    # Ljava/lang/CharSequence;
    .param p5, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput-object p2, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 700
    if-eqz p2, :cond_6

    .line 701
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mBothQQFlag:Z
    invoke-static {p1}, Lcom/tencent/qrom/app/QromResolverActivity;->access$1100(Lcom/tencent/qrom/app/QromResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 702
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(QQ Mob)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 730
    :goto_0
    iput-object p4, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 731
    iput-object p5, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 732
    return-void

    .line 705
    :cond_0
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(Mob)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 709
    :cond_1
    iput-object p3, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 712
    :cond_2
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.qqlite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    # getter for: Lcom/tencent/qrom/app/QromResolverActivity;->mBothQQFlag:Z
    invoke-static {p1}, Lcom/tencent/qrom/app/QromResolverActivity;->access$1100(Lcom/tencent/qrom/app/QromResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 713
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(QQ Lite)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 716
    :cond_3
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(Lite)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 720
    :cond_4
    iput-object p3, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 724
    :cond_5
    iput-object p3, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 728
    :cond_6
    iput-object p3, p0, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

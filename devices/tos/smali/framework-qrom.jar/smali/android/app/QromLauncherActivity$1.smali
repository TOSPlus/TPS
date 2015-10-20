.class Landroid/app/QromLauncherActivity$1;
.super Ljava/lang/Object;
.source "QromLauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/QromLauncherActivity;->updateButtonText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/QromLauncherActivity;


# direct methods
.method constructor <init>(Landroid/app/QromLauncherActivity;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Landroid/app/QromLauncherActivity$1;->this$0:Landroid/app/QromLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/app/QromLauncherActivity$1;->this$0:Landroid/app/QromLauncherActivity;

    invoke-virtual {v0}, Landroid/app/QromLauncherActivity;->finish()V

    .line 378
    return-void
.end method

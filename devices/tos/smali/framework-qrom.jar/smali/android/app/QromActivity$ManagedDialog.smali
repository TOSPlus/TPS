.class Landroid/app/QromActivity$ManagedDialog;
.super Ljava/lang/Object;
.source "QromActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QromActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagedDialog"
.end annotation


# instance fields
.field mArgs:Landroid/os/Bundle;

.field mDialog:Lcom/tencent/qrom/app/QromDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/QromActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/QromActivity$1;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/app/QromActivity$ManagedDialog;-><init>()V

    return-void
.end method

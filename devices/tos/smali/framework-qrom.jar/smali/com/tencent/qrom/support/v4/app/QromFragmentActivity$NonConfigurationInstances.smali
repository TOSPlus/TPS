.class final Lcom/tencent/qrom/support/v4/app/QromFragmentActivity$NonConfigurationInstances;
.super Ljava/lang/Object;
.source "QromFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonConfigurationInstances"
.end annotation


# instance fields
.field activity:Ljava/lang/Object;

.field children:Lcom/tencent/qrom/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qrom/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field custom:Ljava/lang/Object;

.field fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field loaders:Lcom/tencent/qrom/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qrom/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/qrom/support/v4/app/LoaderManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

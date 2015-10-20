.class final Lcom/tencent/qrom/support/v4/app/BackStackRecord$Op;
.super Ljava/lang/Object;
.source "BackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/support/v4/app/BackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field cmd:I

.field enterAnim:I

.field exitAnim:I

.field fragment:Lcom/tencent/qrom/support/v4/app/Fragment;

.field next:Lcom/tencent/qrom/support/v4/app/BackStackRecord$Op;

.field popEnterAnim:I

.field popExitAnim:I

.field prev:Lcom/tencent/qrom/support/v4/app/BackStackRecord$Op;

.field removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

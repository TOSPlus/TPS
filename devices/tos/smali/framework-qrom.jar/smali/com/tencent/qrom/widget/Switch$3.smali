.class final Lcom/tencent/qrom/widget/Switch$3;
.super Landroid/util/FloatProperty;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/tencent/qrom/widget/Switch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/tencent/qrom/widget/Switch;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/tencent/qrom/widget/Switch;

    .prologue
    .line 1255
    # getter for: Lcom/tencent/qrom/widget/Switch;->mThumbPosition:F
    invoke-static {p1}, Lcom/tencent/qrom/widget/Switch;->access$100(Lcom/tencent/qrom/widget/Switch;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1252
    check-cast p1, Lcom/tencent/qrom/widget/Switch;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/Switch$3;->get(Lcom/tencent/qrom/widget/Switch;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/tencent/qrom/widget/Switch;F)V
    .locals 0
    .param p1, "object"    # Lcom/tencent/qrom/widget/Switch;
    .param p2, "value"    # F

    .prologue
    .line 1260
    # invokes: Lcom/tencent/qrom/widget/Switch;->setThumbPosition(F)V
    invoke-static {p1, p2}, Lcom/tencent/qrom/widget/Switch;->access$600(Lcom/tencent/qrom/widget/Switch;F)V

    .line 1261
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 1252
    check-cast p1, Lcom/tencent/qrom/widget/Switch;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/Switch$3;->setValue(Lcom/tencent/qrom/widget/Switch;F)V

    return-void
.end method

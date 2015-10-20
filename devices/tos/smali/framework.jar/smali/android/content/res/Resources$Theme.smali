.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mTheme:I

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 1592
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    iget-object v0, p1, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    .line 1594
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()I

    move-result v0

    iput v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    .line 1595
    return-void
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "force"    # Z

    .prologue
    .line 1307
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(IIZ)V

    .line 1308
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1584
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(IILjava/lang/String;Ljava/lang/String;)V

    .line 1585
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1588
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1589
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->releaseTheme(I)V

    .line 1590
    return-void
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 3
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources$Theme;->tos_org_obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1389
    .local v0, "array":Landroid/content/res/TypedArray;
    new-instance v1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v1}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1390
    .local v1, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1391
    iput-object p0, v1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 1393
    invoke-virtual {v1, v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->setResult(Ljava/lang/Object;)V

    .line 1394
    const-string v2, "android.content.res.Resources$Theme#obtainStyledAttributes"

    invoke-static {v2, v1}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1396
    invoke-virtual {v1}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/TypedArray;

    return-object v2
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 3
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1486
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/res/Resources$Theme;->tos_org_obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1488
    .local v0, "array":Landroid/content/res/TypedArray;
    new-instance v1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v1}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1489
    .local v1, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1490
    iput-object p0, v1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 1492
    invoke-virtual {v1, v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->setResult(Ljava/lang/Object;)V

    .line 1493
    const-string v2, "android.content.res.Resources$Theme#obtainStyledAttributes"

    invoke-static {v2, v1}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1495
    invoke-virtual {v1}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/TypedArray;

    return-object v2
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 3
    .param p1, "attrs"    # [I

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->tos_org_obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1345
    .local v0, "array":Landroid/content/res/TypedArray;
    new-instance v1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v1}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1346
    .local v1, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1347
    iput-object p0, v1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 1349
    invoke-virtual {v1, v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->setResult(Ljava/lang/Object;)V

    .line 1350
    const-string v2, "android.content.res.Resources$Theme#obtainStyledAttributes"

    invoke-static {v2, v1}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1352
    invoke-virtual {v1}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/TypedArray;

    return-object v2
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 3
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .prologue
    .line 1566
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v2, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/content/res/AssetManager;->getThemeValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1573
    .local v0, "got":Z
    return v0
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "other"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1320
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget v1, p1, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->copyTheme(II)V

    .line 1321
    return-void
.end method

.method public tos_org_obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1400
    array-length v8, p2

    .line 1401
    .local v8, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    # invokes: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1402
    .local v7, "array":Landroid/content/res/TypedArray;
    iput-object p2, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1404
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, p1

    move v3, v1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1433
    return-object v7
.end method

.method public tos_org_obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 10
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1499
    array-length v8, p2

    .line 1500
    .local v8, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    # invokes: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .local v7, "array":Landroid/content/res/TypedArray;
    move-object v9, p1

    .line 1506
    check-cast v9, Landroid/content/res/XmlBlock$Parser;

    .line 1507
    .local v9, "parser":Landroid/content/res/XmlBlock$Parser;
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    if-eqz v9, :cond_0

    iget v3, v9, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    :goto_0
    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v1, p3

    move v2, p4

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1512
    iput-object p2, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1513
    iput-object v9, v7, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1544
    return-object v7

    .line 1507
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public tos_org_obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "attrs"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1356
    array-length v8, p1

    .line 1357
    .local v8, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    # invokes: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1358
    .local v7, "array":Landroid/content/res/TypedArray;
    iput-object p1, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1359
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, v1

    move v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1362
    return-object v7
.end method

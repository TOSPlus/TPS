.class Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "QromResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;Lcom/tencent/qrom/app/QromResolverActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;
    .param p2, "x1"    # Lcom/tencent/qrom/app/QromResolverActivity$1;

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;-><init>(Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;)Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;
    .locals 8
    .param p1, "params"    # [Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 672
    aget-object v7, p1, v5

    .line 673
    .local v7, "info":Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;
    iget-object v0, v7, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    iget-object v3, v7, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/app/QromResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 675
    iget-object v0, v7, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 676
    .local v1, "srcBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/tencent/qrom/utils/BitmapUtil;->analyzeBitmap1(Landroid/graphics/Bitmap;)Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;

    move-result-object v4

    .line 677
    .local v4, "analyzedResult":Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    const/4 v3, 0x1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/tencent/qrom/utils/BitmapUtil;->processOrdinaryIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZLcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;ZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;->displayBitmap:Landroid/graphics/Bitmap;

    .line 679
    .end local v1    # "srcBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "analyzedResult":Lcom/tencent/qrom/utils/BitmapUtil$IconAnalyzedResult;
    :cond_0
    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 669
    check-cast p1, [Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;->doInBackground([Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;)Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;->this$1:Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter;->notifyDataSetChanged()V

    .line 685
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 669
    check-cast p1, Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/QromResolverActivity$QromGridAdapter$LoadIconTask;->onPostExecute(Lcom/tencent/qrom/app/QromResolverActivity$DisplayResolveInfo;)V

    return-void
.end method

.class Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;
.super Ljava/lang/Object;
.source "QromExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/QromExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentHolder"
.end annotation


# instance fields
.field divider:Landroid/widget/ImageView;

.field indicate:Landroid/widget/ImageView;

.field subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tencent/qrom/widget/QromExpandableListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/QromExpandableListAdapter;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->this$0:Lcom/tencent/qrom/widget/QromExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/QromExpandableListAdapter;Lcom/tencent/qrom/widget/QromExpandableListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/QromExpandableListAdapter;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/QromExpandableListAdapter$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;-><init>(Lcom/tencent/qrom/widget/QromExpandableListAdapter;)V

    return-void
.end method


# virtual methods
.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    return-void
.end method

.method public setIndicate(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->indicate:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->this$0:Lcom/tencent/qrom/widget/QromExpandableListAdapter;

    # getter for: Lcom/tencent/qrom/widget/QromExpandableListAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->access$200(Lcom/tencent/qrom/widget/QromExpandableListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 222
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public setTitleColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->this$0:Lcom/tencent/qrom/widget/QromExpandableListAdapter;

    # getter for: Lcom/tencent/qrom/widget/QromExpandableListAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->access$200(Lcom/tencent/qrom/widget/QromExpandableListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 214
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

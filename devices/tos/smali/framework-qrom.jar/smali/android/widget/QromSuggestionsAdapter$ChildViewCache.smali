.class final Landroid/widget/QromSuggestionsAdapter$ChildViewCache;
.super Ljava/lang/Object;
.source "QromSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromSuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChildViewCache"
.end annotation


# instance fields
.field public final mIcon1:Landroid/widget/ImageView;

.field public final mIcon2:Landroid/widget/ImageView;

.field public final mIconRefine:Landroid/widget/ImageView;

.field public final mText1:Landroid/widget/TextView;

.field public final mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const v0, 0x7a0900ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 299
    const v0, 0x7a090040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    .line 300
    const v0, 0x7a0900ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    .line 301
    const v0, 0x7a0900f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    .line 302
    const v0, 0x7a0900f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    .line 303
    return-void
.end method

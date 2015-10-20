.class Landroid/widget/QromSuggestionsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "QromSuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QromSuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELETE_KEY_POST_DELAY:J = 0x1f4L

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSearchView:Landroid/widget/QromSearchView;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/QromSearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchView"    # Landroid/widget/QromSearchView;
    .param p3, "searchable"    # Landroid/app/SearchableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/QromSearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "outsideDrawablesCache":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 99
    const v1, 0x7a030062

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/QromSuggestionsAdapter;->mClosed:Z

    .line 72
    iput v4, p0, Landroid/widget/QromSuggestionsAdapter;->mQueryRefinement:I

    .line 80
    iput v3, p0, Landroid/widget/QromSuggestionsAdapter;->mText1Col:I

    .line 81
    iput v3, p0, Landroid/widget/QromSuggestionsAdapter;->mText2Col:I

    .line 82
    iput v3, p0, Landroid/widget/QromSuggestionsAdapter;->mText2UrlCol:I

    .line 83
    iput v3, p0, Landroid/widget/QromSuggestionsAdapter;->mIconName1Col:I

    .line 84
    iput v3, p0, Landroid/widget/QromSuggestionsAdapter;->mIconName2Col:I

    .line 85
    iput v3, p0, Landroid/widget/QromSuggestionsAdapter;->mFlagsCol:I

    .line 103
    iget-object v1, p0, Landroid/widget/QromSuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 104
    iput-object p2, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchView:Landroid/widget/QromSearchView;

    .line 105
    iput-object p3, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 107
    iget-object v1, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v2, p0, Landroid/widget/QromSuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, "activityContext":Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v2, p0, Landroid/widget/QromSuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/SearchableInfo;->getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/QromSuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 110
    iput-object p4, p0, Landroid/widget/QromSuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 125
    invoke-virtual {p0}, Landroid/widget/QromSuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    new-instance v2, Landroid/widget/QromSuggestionsAdapter$1;

    invoke-direct {v2, p0}, Landroid/widget/QromSuggestionsAdapter$1;-><init>(Landroid/widget/QromSuggestionsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 137
    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resourceUri"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v1, p0, Landroid/widget/QromSuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 593
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 594
    const/4 v1, 0x0

    .line 597
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "url"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Landroid/widget/QromSuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 370
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 371
    .local v6, "colorValue":Landroid/util/TypedValue;
    iget-object v0, p0, Landroid/widget/QromSuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x7a01001b

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 372
    iget-object v0, p0, Landroid/widget/QromSuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromSuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 375
    .end local v6    # "colorValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 376
    .local v7, "text":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Landroid/widget/QromSuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 379
    return-object v7
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x0

    .line 656
    iget-object v7, p0, Landroid/widget/QromSuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 659
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    :try_start_0
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 664
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    .line 665
    .local v3, "iconId":I
    if-nez v3, :cond_1

    move-object v1, v6

    .line 673
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "iconId":I
    :cond_0
    :goto_0
    return-object v1

    .line 660
    :catch_0
    move-exception v2

    .line 661
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SuggestionsAdapter"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 662
    goto :goto_0

    .line 666
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "iconId":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, "pkg":Ljava/lang/String;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4, v3, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 668
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 669
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid icon resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 671
    goto :goto_0
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 634
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "componentIconKey":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/QromSuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 637
    iget-object v5, p0, Landroid/widget/QromSuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 638
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 645
    .end local v0    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v4

    .line 638
    .restart local v0    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v4, p0, Landroid/widget/QromSuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 641
    .end local v0    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/QromSuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 643
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    move-object v3, v4

    .line 644
    .local v3, "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    iget-object v4, p0, Landroid/widget/QromSuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 645
    goto :goto_0

    .line 643
    .end local v3    # "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    goto :goto_1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 686
    .local v0, "col":I
    invoke-static {p0, v0}, Landroid/widget/QromSuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 615
    iget-object v1, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/QromSuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 616
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 621
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Landroid/widget/QromSuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 559
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "scheme":Ljava/lang/String;
    const-string v5, "android.resource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 562
    iget-object v5, p0, Landroid/widget/QromSuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 565
    .local v2, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_1
    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 587
    .end local v2    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v3    # "scheme":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 566
    .restart local v2    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .restart local v3    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 567
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 585
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v3    # "scheme":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 586
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v5, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 587
    goto :goto_0

    .line 571
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v3    # "scheme":Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v5, p0, Landroid/widget/QromSuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 572
    .local v4, "stream":Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 573
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 576
    :cond_1
    const/4 v5, 0x0

    :try_start_4
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 579
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 580
    :catch_2
    move-exception v0

    .line 581
    .local v0, "ex":Ljava/io/IOException;
    :try_start_6
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 578
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 579
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 582
    :goto_1
    :try_start_8
    throw v5

    .line 580
    :catch_3
    move-exception v0

    .line 581
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "drawableId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 516
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v0, v5

    .line 548
    :cond_1
    :goto_0
    return-object v0

    .line 521
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 523
    .local v3, "resourceId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/QromSuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "drawableUri":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/widget/QromSuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 527
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 531
    iget-object v6, p0, Landroid/widget/QromSuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 533
    invoke-direct {p0, v1, v0}, Landroid/widget/QromSuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 535
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawableUri":Ljava/lang/String;
    .end local v3    # "resourceId":I
    :catch_0
    move-exception v2

    .line 537
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Landroid/widget/QromSuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 538
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 541
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 542
    .local v4, "uri":Landroid/net/Uri;
    invoke-direct {p0, v4}, Landroid/widget/QromSuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 543
    invoke-direct {p0, p1, v0}, Landroid/widget/QromSuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 545
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 547
    .local v2, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon resource not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 548
    goto :goto_0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 394
    iget v2, p0, Landroid/widget/QromSuggestionsAdapter;->mIconName1Col:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 395
    const/4 v0, 0x0

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    iget v2, p0, Landroid/widget/QromSuggestionsAdapter;->mIconName1Col:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/widget/QromSuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 399
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 402
    invoke-direct {p0, p1}, Landroid/widget/QromSuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 406
    iget v1, p0, Landroid/widget/QromSuggestionsAdapter;->mIconName2Col:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 407
    const/4 v1, 0x0

    .line 410
    :goto_0
    return-object v1

    .line 409
    :cond_0
    iget v1, p0, Landroid/widget/QromSuggestionsAdapter;->mIconName2Col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/widget/QromSuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "col"    # I

    .prologue
    const/4 v1, 0x0

    .line 690
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 699
    :goto_0
    return-object v1

    .line 694
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SuggestionsAdapter"

    const-string v3, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "nullVisibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    if-nez p2, :cond_0

    .line 423
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 384
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "resourceUri"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 601
    if-eqz p2, :cond_0

    .line 602
    iget-object v0, p0, Landroid/widget/QromSuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_0
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 230
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 238
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :cond_0
    return-void

    .line 230
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;

    .line 310
    .local v3, "views":Landroid/widget/QromSuggestionsAdapter$ChildViewCache;
    const/4 v0, 0x0

    .line 311
    .local v0, "flags":I
    iget v4, p0, Landroid/widget/QromSuggestionsAdapter;->mFlagsCol:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 312
    iget v4, p0, Landroid/widget/QromSuggestionsAdapter;->mFlagsCol:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 314
    :cond_0
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 315
    iget v4, p0, Landroid/widget/QromSuggestionsAdapter;->mText1Col:I

    invoke-static {p3, v4}, Landroid/widget/QromSuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "text1":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1}, Landroid/widget/QromSuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 318
    .end local v1    # "text1":Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 320
    iget v4, p0, Landroid/widget/QromSuggestionsAdapter;->mText2UrlCol:I

    invoke-static {p3, v4}, Landroid/widget/QromSuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "text2":Ljava/lang/CharSequence;
    if-eqz v2, :cond_7

    .line 322
    invoke-direct {p0, v2}, Landroid/widget/QromSuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 329
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 330
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 331
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 332
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 340
    :cond_2
    :goto_1
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {p0, v4, v2}, Landroid/widget/QromSuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 343
    .end local v2    # "text2":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 344
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/widget/QromSuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {p0, v4, v5, v6}, Landroid/widget/QromSuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 346
    :cond_4
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    .line 347
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/widget/QromSuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v4, v5, v10}, Landroid/widget/QromSuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 349
    :cond_5
    iget v4, p0, Landroid/widget/QromSuggestionsAdapter;->mQueryRefinement:I

    if-eq v4, v9, :cond_6

    iget v4, p0, Landroid/widget/QromSuggestionsAdapter;->mQueryRefinement:I

    if-ne v4, v7, :cond_9

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_9

    .line 352
    :cond_6
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    iget-object v5, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 354
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    :goto_2
    return-void

    .line 324
    .restart local v2    # "text2":Ljava/lang/CharSequence;
    :cond_7
    iget v4, p0, Landroid/widget/QromSuggestionsAdapter;->mText2Col:I

    invoke-static {p3, v4}, Landroid/widget/QromSuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 335
    :cond_8
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 336
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 337
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 356
    .end local v2    # "text2":Ljava/lang/CharSequence;
    :cond_9
    iget-object v4, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 254
    iget-boolean v1, p0, Landroid/widget/QromSuggestionsAdapter;->mClosed:Z

    if-eqz v1, :cond_1

    .line 255
    const-string v1, "SuggestionsAdapter"

    const-string v2, "Tried to change cursor after adapter was closed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 263
    if-eqz p1, :cond_0

    .line 264
    const-string v1, "suggest_text_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/QromSuggestionsAdapter;->mText1Col:I

    .line 265
    const-string v1, "suggest_text_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/QromSuggestionsAdapter;->mText2Col:I

    .line 266
    const-string v1, "suggest_text_2_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/QromSuggestionsAdapter;->mText2UrlCol:I

    .line 267
    const-string v1, "suggest_icon_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/QromSuggestionsAdapter;->mIconName1Col:I

    .line 268
    const-string v1, "suggest_icon_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/QromSuggestionsAdapter;->mIconName2Col:I

    .line 269
    const-string v1, "suggest_flags"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/QromSuggestionsAdapter;->mFlagsCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SuggestionsAdapter"

    const-string v2, "error changing cursor and caching columns"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/QromSuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/QromSuggestionsAdapter;->mClosed:Z

    .line 209
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 447
    if-nez p1, :cond_1

    move-object v1, v3

    .line 470
    :cond_0
    :goto_0
    return-object v1

    .line 451
    :cond_1
    const-string v4, "suggest_intent_query"

    invoke-static {p1, v4}, Landroid/widget/QromSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "query":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 456
    iget-object v4, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    const-string v4, "suggest_intent_data"

    invoke-static {p1, v4}, Landroid/widget/QromSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 459
    goto :goto_0

    .line 463
    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 464
    const-string v4, "suggest_text_1"

    invoke-static {p1, v4}, Landroid/widget/QromSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "text1":Ljava/lang/String;
    if-eqz v2, :cond_3

    move-object v1, v2

    .line 466
    goto :goto_0

    .end local v2    # "text1":Ljava/lang/String;
    :cond_3
    move-object v1, v3

    .line 470
    goto :goto_0
.end method

.method public getQueryRefinement()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/widget/QromSuggestionsAdapter;->mQueryRefinement:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 482
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 492
    :cond_0
    :goto_0
    return-object v2

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions cursor threw exception."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    iget-object v4, p0, Landroid/widget/QromSuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/widget/QromSuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Landroid/widget/QromSuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 487
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;

    .line 489
    .local v3, "views":Landroid/widget/QromSuggestionsAdapter$ChildViewCache;
    iget-object v1, v3, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 490
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 281
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;

    invoke-direct {v1, v0}, Landroid/widget/QromSuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 283
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 218
    invoke-virtual {p0}, Landroid/widget/QromSuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/QromSuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 219
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 226
    invoke-virtual {p0}, Landroid/widget/QromSuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/QromSuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 227
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 362
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchView:Landroid/widget/QromSearchView;

    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/QromSearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    .line 365
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 177
    if-nez p1, :cond_1

    const-string v2, ""

    .line 182
    .local v2, "query":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 183
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v4, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchView:Landroid/widget/QromSearchView;

    invoke-virtual {v4}, Landroid/widget/QromSearchView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchView:Landroid/widget/QromSearchView;

    invoke-virtual {v4}, Landroid/widget/QromSearchView;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    :cond_0
    :goto_1
    return-object v3

    .line 177
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "query":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 189
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v4, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    iget-object v5, p0, Landroid/widget/QromSuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    const/16 v6, 0x32

    invoke-virtual {v4, v5, v2, v6}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 194
    goto :goto_1

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions query threw an exception."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setQueryRefinement(I)V
    .locals 0
    .param p1, "refineWhat"    # I

    .prologue
    .line 149
    iput p1, p0, Landroid/widget/QromSuggestionsAdapter;->mQueryRefinement:I

    .line 150
    return-void
.end method

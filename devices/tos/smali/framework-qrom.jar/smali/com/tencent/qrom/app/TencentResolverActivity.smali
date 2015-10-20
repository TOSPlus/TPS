.class public Lcom/tencent/qrom/app/TencentResolverActivity;
.super Lcom/tencent/qrom/app/AlertActivity;
.source "TencentResolverActivity.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/TencentResolverActivity$LoadIconTask;,
        Lcom/tencent/qrom/app/TencentResolverActivity$ItemLongClickListener;,
        Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;,
        Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TencentResolverActivity"


# instance fields
.field private mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mCategoryIndex:I

.field private mIconDpi:I

.field private mIconSize:I

.field private mIsNeedSaveToSharedPreference:Z

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mListView:Lcom/tencent/qrom/widget/ListView;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mShowExtended:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 82
    invoke-direct {p0}, Lcom/tencent/qrom/app/AlertActivity;-><init>()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mIsNeedSaveToSharedPreference:Z

    .line 97
    iput v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mLastSelected:I

    .line 100
    iput v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mCategoryIndex:I

    .line 102
    new-instance v0, Lcom/tencent/qrom/app/TencentResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/TencentResolverActivity$1;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 848
    return-void
.end method

.method public static TrimString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 536
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 548
    .end local p0    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p0

    .line 539
    .restart local p0    # "label":Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x0

    .line 540
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 541
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 542
    .local v0, "charToInt":I
    const/16 v3, 0x21

    if-lt v0, v3, :cond_2

    const/16 v3, 0x80

    if-le v0, v3, :cond_3

    const/16 v3, 0x100

    if-ge v0, v3, :cond_3

    .line 543
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 548
    .end local v0    # "charToInt":I
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/TencentResolverActivity;)Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/TencentResolverActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/app/TencentResolverActivity;)Lcom/tencent/qrom/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/TencentResolverActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/app/TencentResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/TencentResolverActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/app/TencentResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/TencentResolverActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tencent/qrom/app/TencentResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/TencentResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mShowExtended:Z

    return p1
.end method

.method private getPreferredAComponentNameByIntent(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 866
    const-string v2, "content://com.tencent.qrom.permission"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "intents_table"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 868
    .local v3, "queryIntentUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 869
    .local v11, "action":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 870
    const/16 v17, 0x0

    .line 939
    :cond_0
    :goto_0
    return-object v17

    .line 872
    :cond_1
    const/16 v16, 0x0

    .line 873
    .local v16, "category":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v21

    .line 874
    .local v21, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v23

    .line 875
    .local v23, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    .line 876
    .local v15, "catSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_3

    .line 877
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 878
    .local v14, "cat":Ljava/lang/String;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 879
    const-string v16, "android.intent.category.HOME"

    goto :goto_1

    .line 883
    .end local v14    # "cat":Ljava/lang/String;
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v13, 0x0

    .line 884
    .local v13, "c":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 885
    .local v17, "cmName":Landroid/content/ComponentName;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    .local v10, "Selection":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_action=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    if-eqz v16, :cond_4

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND _category=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    :cond_4
    if-eqz v21, :cond_5

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND _mimetype=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :cond_5
    if-eqz v23, :cond_6

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND _scheme=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 900
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 901
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 902
    const-string v2, "_index"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity;->mCategoryIndex:I

    .line 904
    const-string v2, "default"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCategoryIndex="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/qrom/app/TencentResolverActivity;->mCategoryIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    :cond_7
    if-eqz v13, :cond_8

    .line 910
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 913
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity;->mCategoryIndex:I

    if-ltz v2, :cond_0

    .line 914
    const-string v2, "content://com.tencent.qrom.permission"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "defaultapp"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 916
    .local v5, "queryPreferredUri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 917
    .local v19, "defaultCursor":Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_category="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/qrom/app/TencentResolverActivity;->mCategoryIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_is_default"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 921
    .local v7, "selection":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 922
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 923
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 924
    const-string v2, "_pkgname"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 925
    .local v22, "pkgName":Ljava/lang/String;
    const-string v2, "_activity"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 926
    .local v12, "activity":Ljava/lang/String;
    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 927
    .end local v17    # "cmName":Landroid/content/ComponentName;
    .local v18, "cmName":Landroid/content/ComponentName;
    :try_start_2
    const-string v2, "TencentResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v18

    .line 932
    .end local v12    # "activity":Ljava/lang/String;
    .end local v18    # "cmName":Landroid/content/ComponentName;
    .end local v22    # "pkgName":Ljava/lang/String;
    .restart local v17    # "cmName":Landroid/content/ComponentName;
    :cond_9
    if-eqz v19, :cond_0

    .line 933
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 909
    .end local v5    # "queryPreferredUri":Landroid/net/Uri;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v19    # "defaultCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_a

    .line 910
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2

    .line 932
    .restart local v5    # "queryPreferredUri":Landroid/net/Uri;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v19    # "defaultCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :goto_2
    if-eqz v19, :cond_b

    .line 933
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 932
    .end local v17    # "cmName":Landroid/content/ComponentName;
    .restart local v12    # "activity":Ljava/lang/String;
    .restart local v18    # "cmName":Landroid/content/ComponentName;
    .restart local v22    # "pkgName":Ljava/lang/String;
    :catchall_2
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "cmName":Landroid/content/ComponentName;
    .restart local v17    # "cmName":Landroid/content/ComponentName;
    goto :goto_2
.end method

.method public static isSystemApplication(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x1

    .line 504
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v0

    .line 508
    :cond_1
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.tencent.qrom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    const-string v1, "TencentResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "ai"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    const/4 v5, 0x0

    .line 515
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 516
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->TrimString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 517
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 518
    .local v2, "mainIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 522
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 523
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 532
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "mainIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->TrimString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 525
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "mainIntent":Landroid/content/Intent;
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 526
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->TrimString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 527
    :cond_4
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    const-string v1, "yan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v0
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 256
    :try_start_0
    iget v2, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 261
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 257
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 267
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/app/TencentResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 277
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "TencentResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find resources for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 348
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->dismiss()V

    .line 349
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-direct {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 131
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 133
    .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/TencentResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-super/range {p0 .. p1}, Lcom/tencent/qrom/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    iget-object v9, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAlertParams:Lcom/tencent/qrom/app/AlertController$AlertParams;

    .line 146
    .local v9, "ap":Lcom/tencent/qrom/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0e01c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0e01c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 149
    new-instance v1, Lcom/tencent/qrom/app/TencentResolverActivity$2;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/app/TencentResolverActivity$2;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;)V

    iput-object v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0e01c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 164
    new-instance v1, Lcom/tencent/qrom/app/TencentResolverActivity$3;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/app/TencentResolverActivity$3;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;)V

    iput-object v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 175
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 176
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAlwaysUseOption:Z

    .line 178
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mRegistered:Z

    .line 182
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 183
    .local v8, "am":Landroid/app/ActivityManager;
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mIconDpi:I

    .line 184
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mIconSize:I

    .line 186
    new-instance v1, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    iget v7, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mLaunchedFromUid:I

    move-object v2, p0

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    .line 187
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->getCount()I

    move-result v10

    .line 188
    .local v10, "count":I
    iget v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mLaunchedFromUid:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->finish()V

    .line 251
    :cond_1
    :goto_1
    return-void

    .line 142
    .end local v8    # "am":Landroid/app/ActivityManager;
    .end local v9    # "ap":Lcom/tencent/qrom/app/AlertController$AlertParams;
    .end local v10    # "count":I
    :catch_0
    move-exception v11

    .line 143
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    .line 192
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v8    # "am":Landroid/app/ActivityManager;
    .restart local v9    # "ap":Lcom/tencent/qrom/app/AlertController$AlertParams;
    .restart local v10    # "count":I
    :cond_2
    const/4 v1, 0x1

    if-le v10, v1, :cond_6

    .line 193
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getPreferredAComponentNameByIntent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v14

    .line 194
    .local v14, "preferredPkgString":Landroid/content/ComponentName;
    if-eqz v14, :cond_4

    .line 195
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    iget-object v1, v1, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;

    .line 196
    .local v13, "info":Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;
    iget-object v1, v13, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v13, Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mIsNeedSaveToSharedPreference:Z

    .line 199
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    iget-object v1, v1, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qrom/app/TencentResolverActivity;->startSelected(IZ)V

    .line 200
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mRegistered:Z

    goto :goto_1

    .line 207
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Lcom/tencent/qrom/app/TencentResolverActivity$DisplayResolveInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7a030082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 208
    const/4 v1, 0x0

    iput v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 209
    const/4 v1, 0x0

    iput v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 210
    const/4 v1, 0x0

    iput v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 211
    const/4 v1, 0x0

    iput v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 212
    iget-object v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7a090167

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/ListView;

    iput-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    .line 213
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    iget-object v2, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, p0}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    new-instance v2, Lcom/tencent/qrom/app/TencentResolverActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/app/TencentResolverActivity$ItemLongClickListener;-><init>(Lcom/tencent/qrom/app/TencentResolverActivity;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setOnItemLongClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;)V

    .line 217
    if-eqz p5, :cond_5

    .line 218
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setChoiceMode(I)V

    .line 232
    .end local v14    # "preferredPkgString":Landroid/content/ComponentName;
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->setupAlert()V

    .line 234
    if-eqz p5, :cond_1

    .line 244
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->getInitialHighlight()I

    move-result v4

    .line 245
    .local v4, "initialHighlight":I
    if-ltz v4, :cond_1

    .line 246
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/tencent/qrom/widget/ListView;->setItemChecked(IZ)V

    .line 247
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/qrom/app/TencentResolverActivity;->onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_1

    .line 220
    .end local v4    # "initialHighlight":I
    :cond_6
    const/4 v1, 0x1

    if-ne v10, v1, :cond_7

    .line 221
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    iget-object v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mRegistered:Z

    .line 225
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->finish()V

    goto/16 :goto_1

    .line 229
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0e0188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Lcom/tencent/qrom/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 27
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 364
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .line 370
    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_1

    .line 371
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 372
    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    .end local v12    # "cat":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 378
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 379
    .local v14, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_2

    .line 380
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 381
    .local v18, "mimeType":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 383
    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v18    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 394
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    const-string v2, "file"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "content"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 396
    :cond_3
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 400
    const/16 v20, 0x0

    .line 401
    .local v20, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_5

    .line 403
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 404
    if-eqz v20, :cond_5

    .line 405
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .line 406
    .local v26, "ssp":Ljava/lang/String;
    :cond_4
    if-eqz v26, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 407
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 408
    .local v19, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 409
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 415
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v26    # "ssp":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 416
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_7

    .line 417
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 418
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 419
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v14}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 420
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v22

    .line 421
    .local v22, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v22, :cond_b

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v22    # "port":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 427
    if-eqz v20, :cond_9

    .line 428
    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 429
    .local v21, "path":Ljava/lang/String;
    :cond_8
    if-eqz v21, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 430
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 431
    .restart local v19    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 432
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 440
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v21    # "path":Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_d

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 442
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v25, v0

    .line 443
    .local v25, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 444
    .local v7, "bestMatch":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_c

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 446
    .local v23, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v25, v16

    .line 447
    move-object/from16 v0, v23

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_a

    .line 448
    move-object/from16 v0, v23

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 444
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 384
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v16    # "i":I
    .end local v23    # "r":Landroid/content/pm/ResolveInfo;
    .end local v25    # "set":[Landroid/content/ComponentName;
    .restart local v18    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 385
    .local v15, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    invoke-static {v2, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 421
    .end local v15    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v18    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v22    # "port":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 450
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v22    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_c
    if-eqz p3, :cond_f

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 476
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "data":Landroid/net/Uri;
    .end local v16    # "i":I
    .end local v25    # "set":[Landroid/content/ComponentName;
    :cond_d
    :goto_4
    if-eqz p2, :cond_e

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/TencentResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 480
    :cond_e
    return-void

    .line 462
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "data":Landroid/net/Uri;
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_d

    .line 465
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 468
    :catch_1
    move-exception v24

    .line 469
    .local v24, "re":Landroid/os/RemoteException;
    const-string v2, "TencentResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 328
    iget-object v4, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v2, p3, v4

    .line 329
    .local v2, "realPosition":I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/ListView;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 333
    .local v0, "checkedPos":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    const/4 v1, 0x1

    .line 334
    .local v1, "hasValidSelection":Z
    :goto_1
    iget-boolean v4, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAlwaysUseOption:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_2

    iget v4, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mLastSelected:I

    if-eq v4, v0, :cond_5

    .line 337
    :cond_2
    if-eqz v1, :cond_3

    .line 338
    iget-object v3, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/widget/ListView;->smoothScrollToPosition(I)V

    .line 340
    :cond_3
    iput v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mLastSelected:I

    goto :goto_0

    .end local v1    # "hasValidSelection":Z
    :cond_4
    move v1, v3

    .line 333
    goto :goto_1

    .line 342
    .restart local v1    # "hasValidSelection":Z
    :cond_5
    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/app/TencentResolverActivity;->startSelected(IZ)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 282
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertActivity;->onRestart()V

    .line 283
    iget-boolean v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mRegistered:Z

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 288
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 314
    iget-boolean v2, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 316
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 317
    .local v1, "enabled":Z
    :goto_0
    iput v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mLastSelected:I

    .line 320
    if-eqz v1, :cond_0

    .line 321
    iget-object v2, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    .line 324
    .end local v0    # "checkedPos":I
    .end local v1    # "enabled":Z
    :cond_0
    return-void

    .line 316
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertActivity;->onStop()V

    .line 293
    iget-boolean v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mRegistered:Z

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->finish()V

    .line 309
    :cond_1
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 483
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 486
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/TencentResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 487
    return-void
.end method

.method startSelected(IZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 356
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/tencent/qrom/app/TencentResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 358
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TencentResolverActivity;->finish()V

    goto :goto_0
.end method

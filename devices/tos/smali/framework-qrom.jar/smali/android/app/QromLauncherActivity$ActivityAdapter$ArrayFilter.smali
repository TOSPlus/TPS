.class Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "QromLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QromLauncherActivity$ActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;


# direct methods
.method private constructor <init>(Landroid/app/QromLauncherActivity$ActivityAdapter;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/QromLauncherActivity$ActivityAdapter;Landroid/app/QromLauncherActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/QromLauncherActivity$ActivityAdapter;
    .param p2, "x1"    # Landroid/app/QromLauncherActivity$1;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/QromLauncherActivity$ActivityAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    new-instance v8, Landroid/widget/Filter$FilterResults;

    invoke-direct {v8}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 191
    .local v8, "results":Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/QromLauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/app/QromLauncherActivity$ActivityAdapter;->access$100(Landroid/app/QromLauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/QromLauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/app/QromLauncherActivity$ActivityAdapter;->access$200(Landroid/app/QromLauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 193
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Landroid/app/QromLauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13, v15}, Landroid/app/QromLauncherActivity$ActivityAdapter;->access$102(Landroid/app/QromLauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 194
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/QromLauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/app/QromLauncherActivity$ActivityAdapter;->access$200(Landroid/app/QromLauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 199
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/QromLauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/app/QromLauncherActivity$ActivityAdapter;->access$100(Landroid/app/QromLauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/QromLauncherActivity$ListItem;>;"
    iput-object v5, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 201
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v8, Landroid/widget/Filter$FilterResults;->count:I

    .line 202
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/QromLauncherActivity$ListItem;>;"
    :goto_0
    return-object v8

    .line 194
    :catchall_0
    move-exception v13

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 202
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13

    .line 204
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, "prefixString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/QromLauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/app/QromLauncherActivity$ActivityAdapter;->access$100(Landroid/app/QromLauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    .line 207
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/QromLauncherActivity$ListItem;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 209
    .local v1, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v6, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/QromLauncherActivity$ListItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 212
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/QromLauncherActivity$ListItem;

    .line 214
    .local v3, "item":Landroid/app/QromLauncherActivity$ListItem;
    iget-object v13, v3, Landroid/app/QromLauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 215
    .local v12, "words":[Ljava/lang/String;
    array-length v11, v12

    .line 217
    .local v11, "wordCount":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    if-ge v4, v11, :cond_3

    .line 218
    aget-object v10, v12, v4

    .line 220
    .local v10, "word":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 221
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v10    # "word":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    .restart local v10    # "word":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 227
    .end local v3    # "item":Landroid/app/QromLauncherActivity$ListItem;
    .end local v4    # "k":I
    .end local v10    # "word":Ljava/lang/String;
    .end local v11    # "wordCount":I
    .end local v12    # "words":[Ljava/lang/String;
    :cond_5
    iput-object v6, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 228
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v8, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 237
    iget-object v1, p0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    .line 238
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/QromLauncherActivity$ActivityAdapter;->notifyDataSetChanged()V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/QromLauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/QromLauncherActivity$ActivityAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

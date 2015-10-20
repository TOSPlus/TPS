.class public abstract Lcom/tencent/qrom/widget/QromExpandableListAdapter;
.super Lcom/tencent/qrom/widget/BaseExpandableListAdapter;
.source "QromExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/QromExpandableListAdapter$1;,
        Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;,
        Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;
    }
.end annotation


# instance fields
.field private childIndicate:Landroid/graphics/drawable/Drawable;

.field private childIndicateVisibility:Z

.field private childInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private childTitleColor:I

.field private childTitles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private listView:Lcom/tencent/qrom/widget/ExpandableListView;

.field private parentDivider:Landroid/graphics/drawable/Drawable;

.field private parentIndicateDown:Landroid/graphics/drawable/Drawable;

.field private parentIndicateUp:Landroid/graphics/drawable/Drawable;

.field private parentSubTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parentSubtitleColor:I

.field private parentTitleColor:I

.field private parentTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/widget/ExpandableListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/tencent/qrom/widget/ExpandableListView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/qrom/widget/BaseExpandableListAdapter;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childIndicateVisibility:Z

    .line 28
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->listView:Lcom/tencent/qrom/widget/ExpandableListView;

    .line 30
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/QromExpandableListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/QromExpandableListAdapter;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childTitles:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childTitles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 42
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;
    if-nez p4, :cond_2

    .line 58
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7a030053

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 59
    new-instance v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;

    .end local v1    # "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;
    invoke-direct {v1, p0, v7}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;-><init>(Lcom/tencent/qrom/widget/QromExpandableListAdapter;Lcom/tencent/qrom/widget/QromExpandableListAdapter$1;)V

    .line 60
    .restart local v1    # "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;
    const v3, 0x7a090136

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->title:Landroid/widget/TextView;

    .line 61
    const v3, 0x7a090135

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->indicate:Landroid/widget/ImageView;

    .line 62
    const v3, 0x7a090144

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->info:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->indicate:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->info:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childTitles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->setTitle(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childIndicate:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7a02019a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->setIndicate(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->setInfo(Ljava/lang/String;)V

    .line 77
    const v2, 0x7a0b0033

    .line 78
    .local v2, "titleColor":I
    iget v3, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childTitleColor:I

    if-nez v3, :cond_4

    .end local v2    # "titleColor":I
    :goto_2
    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->setTitleColor(I)V

    .line 80
    iget-object v6, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->indicate:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childIndicateVisibility:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->title:Landroid/widget/TextView;

    if-nez v3, :cond_6

    :cond_0
    move v0, v4

    .line 84
    .local v0, "hasTitle":Z
    :goto_4
    if-nez v0, :cond_1

    .line 85
    iget-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->indicate:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :cond_1
    iget-object v3, v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;->indicate:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    return-object p4

    .line 66
    .end local v0    # "hasTitle":Z
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;
    check-cast v1, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;

    .restart local v1    # "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ChildHolder;
    goto/16 :goto_0

    .line 74
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childIndicate:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 78
    .restart local v2    # "titleColor":I
    :cond_4
    iget v2, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childTitleColor:I

    goto :goto_2

    .end local v2    # "titleColor":I
    :cond_5
    move v3, v5

    .line 80
    goto :goto_3

    .line 82
    :cond_6
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childTitles:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childTitles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentTitles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 109
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentTitles:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentSubTitles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentSubTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 100
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 118
    .local v2, "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;
    if-nez p3, :cond_8

    .line 119
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7a030058

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 120
    new-instance v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;

    .end local v2    # "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;
    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;-><init>(Lcom/tencent/qrom/widget/QromExpandableListAdapter;Lcom/tencent/qrom/widget/QromExpandableListAdapter$1;)V

    .line 121
    .restart local v2    # "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;
    const v6, 0x7a090131

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->title:Landroid/widget/TextView;

    .line 122
    const v6, 0x7a090133

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->subtitle:Landroid/widget/TextView;

    .line 123
    const v6, 0x7a090132

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->divider:Landroid/widget/ImageView;

    .line 124
    const v6, 0x7a090134

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->indicate:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    :goto_0
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->title:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->subtitle:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->divider:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->indicate:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentTitles:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 137
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentTitles:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->setTitle(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentSubTitles:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 139
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentSubTitles:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->setSubtitle(Ljava/lang/String;)V

    .line 141
    :cond_1
    const/4 v6, 0x2

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7a020199

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7a020197

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v3, v6

    .line 142
    .local v3, "pIndicates":[Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentIndicateUp:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentIndicateDown:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_a

    .line 143
    :cond_2
    if-eqz p2, :cond_9

    const/4 v6, 0x0

    aget-object v6, v3, v6

    :goto_1
    invoke-virtual {v2, v6}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->setIndicate(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_3
    :goto_2
    const v5, 0x7a0b0033

    .line 148
    .local v5, "titleColor":I
    iget v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentTitleColor:I

    if-nez v6, :cond_c

    .end local v5    # "titleColor":I
    :goto_3
    invoke-virtual {v2, v5}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->setTitleColor(I)V

    .line 150
    const v4, 0x7a0b0036

    .line 151
    .local v4, "subtitleColor":I
    iget v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentSubtitleColor:I

    if-nez v6, :cond_d

    .end local v4    # "subtitleColor":I
    :goto_4
    invoke-virtual {v2, v4}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->setSubtitleColor(I)V

    .line 153
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 154
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_4
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->title:Landroid/widget/TextView;

    if-nez v6, :cond_e

    :cond_5
    const/4 v1, 0x0

    .line 157
    .local v1, "hasTitle":Z
    :goto_5
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->subtitle:Landroid/widget/TextView;

    if-nez v6, :cond_f

    :cond_6
    const/4 v0, 0x0

    .line 159
    .local v0, "hasSubTitle":Z
    :goto_6
    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    .line 160
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->divider:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :cond_7
    :goto_7
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->subtitle:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->divider:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    return-object p3

    .line 128
    .end local v0    # "hasSubTitle":Z
    .end local v1    # "hasTitle":Z
    .end local v3    # "pIndicates":[Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;
    check-cast v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;

    .restart local v2    # "holder":Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;
    goto/16 :goto_0

    .line 143
    .restart local v3    # "pIndicates":[Landroid/graphics/drawable/Drawable;
    :cond_9
    const/4 v6, 0x1

    aget-object v6, v3, v6

    goto :goto_1

    .line 144
    :cond_a
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentIndicateUp:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentIndicateDown:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 145
    if-eqz p2, :cond_b

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentIndicateUp:Landroid/graphics/drawable/Drawable;

    :goto_8
    invoke-virtual {v2, v6}, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->setIndicate(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_b
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentIndicateDown:Landroid/graphics/drawable/Drawable;

    goto :goto_8

    .line 148
    .restart local v5    # "titleColor":I
    :cond_c
    iget v5, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentTitleColor:I

    goto :goto_3

    .line 151
    .end local v5    # "titleColor":I
    .restart local v4    # "subtitleColor":I
    :cond_d
    iget v4, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentSubtitleColor:I

    goto :goto_4

    .line 156
    .end local v4    # "subtitleColor":I
    :cond_e
    const/4 v1, 0x1

    goto :goto_5

    .line 157
    .restart local v1    # "hasTitle":Z
    :cond_f
    const/4 v0, 0x1

    goto :goto_6

    .line 162
    .restart local v0    # "hasSubTitle":Z
    :cond_10
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 163
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->title:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v6, v2, Lcom/tencent/qrom/widget/QromExpandableListAdapter$ParentHolder;->divider:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupExpanded(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 188
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->listView:Lcom/tencent/qrom/widget/ExpandableListView;

    invoke-virtual {v1, p1}, Lcom/tencent/qrom/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->listView:Lcom/tencent/qrom/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ExpandableListView;->collapseGroup(I)Z

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

.method public final setChildIndicate(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicate"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childIndicate:Landroid/graphics/drawable/Drawable;

    .line 308
    return-void
.end method

.method public final setChildIndicateVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childIndicateVisibility:Z

    .line 340
    return-void
.end method

.method public final setChildInfos(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "datas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childInfos:Ljava/util/HashMap;

    .line 348
    return-void
.end method

.method public final setChildTitleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childTitleColor:I

    .line 332
    return-void
.end method

.method public final setChildTitles(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "datas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->childTitles:Ljava/util/HashMap;

    .line 276
    return-void
.end method

.method public final setParentDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "parentDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentDivider:Landroid/graphics/drawable/Drawable;

    .line 300
    return-void
.end method

.method public final setParentIndicateDown(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "parentIndicateDown"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentIndicateDown:Landroid/graphics/drawable/Drawable;

    .line 292
    return-void
.end method

.method public final setParentIndicateUp(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "parentIndicateUp"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentIndicateUp:Landroid/graphics/drawable/Drawable;

    .line 284
    return-void
.end method

.method public final setParentSubtitleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentSubtitleColor:I

    .line 324
    return-void
.end method

.method public final setParentSubtitles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentSubTitles:Ljava/util/ArrayList;

    .line 268
    return-void
.end method

.method public final setParentTitleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentTitleColor:I

    .line 316
    return-void
.end method

.method public final setParentTitles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromExpandableListAdapter;->parentTitles:Ljava/util/ArrayList;

    .line 260
    return-void
.end method

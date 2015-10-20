.class Landroid/app/QromLauncherActivity$ActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "QromLauncherActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QromLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field protected mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/QromLauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field protected final mIconResizer:Landroid/app/QromLauncherActivity$IconResizer;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/QromLauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowIcons:Z

.field final synthetic this$0:Landroid/app/QromLauncherActivity;


# direct methods
.method public constructor <init>(Landroid/app/QromLauncherActivity;Landroid/app/QromLauncherActivity$IconResizer;)V
    .locals 1
    .param p2, "resizer"    # Landroid/app/QromLauncherActivity$IconResizer;

    .prologue
    .line 110
    iput-object p1, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->this$0:Landroid/app/QromLauncherActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/QromLauncherActivity$IconResizer;

    .line 112
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/QromLauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    invoke-virtual {p1}, Landroid/app/QromLauncherActivity;->onEvaluateShowIcons()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mShowIcons:Z

    .line 115
    invoke-virtual {p1}, Landroid/app/QromLauncherActivity;->makeListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    .line 116
    return-void
.end method

.method static synthetic access$100(Landroid/app/QromLauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/QromLauncherActivity$ActivityAdapter;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/QromLauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/app/QromLauncherActivity$ActivityAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 98
    iput-object p1, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/app/QromLauncherActivity$ActivityAdapter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/QromLauncherActivity$ActivityAdapter;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Landroid/app/QromLauncherActivity$ListItem;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Landroid/app/QromLauncherActivity$ListItem;

    .prologue
    const/4 v4, 0x0

    .line 165
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 166
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p2, Landroid/app/QromLauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-boolean v1, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mShowIcons:Z

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p2, Landroid/app/QromLauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/QromLauncherActivity$IconResizer;

    iget-object v2, p2, Landroid/app/QromLauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->this$0:Landroid/app/QromLauncherActivity;

    invoke-virtual {v3}, Landroid/app/QromLauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/QromLauncherActivity$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p2, Landroid/app/QromLauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 171
    :cond_0
    iget-object v1, p2, Landroid/app/QromLauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/QromLauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/QromLauncherActivity$ActivityAdapter;Landroid/app/QromLauncherActivity$1;)V

    iput-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 149
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    iget-object v1, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7a03000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/QromLauncherActivity$ListItem;

    invoke-direct {p0, v0, v1}, Landroid/app/QromLauncherActivity$ActivityAdapter;->bindView(Landroid/view/View;Landroid/app/QromLauncherActivity$ListItem;)V

    .line 161
    return-object v0

    .line 158
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 119
    iget-object v2, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 120
    const/4 v0, 0x0

    .line 129
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->this$0:Landroid/app/QromLauncherActivity;

    iget-object v2, v2, Landroid/app/QromLauncherActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/QromLauncherActivity$ListItem;

    .line 125
    .local v1, "item":Landroid/app/QromLauncherActivity$ListItem;
    iget-object v2, v1, Landroid/app/QromLauncherActivity$ListItem;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/QromLauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v2, v1, Landroid/app/QromLauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, v1, Landroid/app/QromLauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public itemForPosition(I)Landroid/app/QromLauncherActivity$ListItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 133
    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/QromLauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/QromLauncherActivity$ListItem;

    goto :goto_0
.end method

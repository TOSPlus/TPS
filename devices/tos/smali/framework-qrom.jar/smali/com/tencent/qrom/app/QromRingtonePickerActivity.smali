.class public Lcom/tencent/qrom/app/QromRingtonePickerActivity;
.super Landroid/app/QromActivity;
.source "QromRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final MENU_CHOOSE:I = 0x1

.field private static final SAVE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final URI_COLUMN_INDEX:I = 0x2

.field private static final mCurrentprojection:[Ljava/lang/String;

.field private static final projection:[Ljava/lang/String;


# instance fields
.field private actionBar:Lcom/tencent/qrom/app/ActionBar;

.field private bChooseOtherRing:Z

.field bSystemSettingsCall:Z

.field private broadcastRec:Landroid/content/BroadcastReceiver;

.field private mBaseUri:Landroid/net/Uri;

.field private mChoosedRingtone:Landroid/media/Ringtone;

.field private mClickedPos:I

.field private mCurrentRingtonePos:I

.field private mCurrentTitle:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field mIsDefault:Z

.field public mLabelColumn:Ljava/lang/String;

.field private mListView1:Lcom/tencent/qrom/widget/ListView;

.field private mListView2:Lcom/tencent/qrom/widget/ListView;

.field private mOnItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

.field private mPreviousClickedPos:I

.field private mRinfTypes:I

.field private mRingTitle:Ljava/lang/String;

.field private mRingUri:Landroid/net/Uri;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSdcardFilter:Landroid/content/IntentFilter;

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mTextView:Landroid/widget/TextView;

.field private mUriCurrentItem:Landroid/net/Uri;

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->projection:[Ljava/lang/String;

    .line 133
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCurrentprojection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 49
    invoke-direct {p0}, Landroid/app/QromActivity;-><init>()V

    .line 64
    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSilentPos:I

    .line 67
    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtonePos:I

    .line 70
    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    .line 73
    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSampleRingtonePos:I

    .line 93
    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCurrentRingtonePos:I

    .line 101
    iput-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    .line 103
    iput-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    .line 105
    const-string v0, "title"

    iput-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mLabelColumn:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;

    .line 115
    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bChooseOtherRing:Z

    .line 118
    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mPreviousClickedPos:I

    .line 120
    iput-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingUri:Landroid/net/Uri;

    .line 122
    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mIsDefault:Z

    .line 124
    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bSystemSettingsCall:Z

    .line 237
    new-instance v0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity$1;-><init>(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mOnItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .line 697
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    .line 708
    new-instance v0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;-><init>(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->broadcastRec:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setActionBarStyle()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    return v0
.end method

.method static synthetic access$1000(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qrom/app/QromRingtonePickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/app/QromRingtonePickerActivity;Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getPositionInListview(Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/qrom/app/QromRingtonePickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setActionBarStyle(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qrom/app/QromRingtonePickerActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/app/QromRingtonePickerActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bChooseOtherRing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tencent/qrom/app/QromRingtonePickerActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromRingtonePickerActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;

    return-object p1
.end method

.method private addCurrentItem(Lcom/tencent/qrom/widget/ListView;)I
    .locals 1
    .param p1, "listView"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 347
    const/4 v0, -0x1

    return v0
.end method

.method private addDefaultRingtoneItem(Lcom/tencent/qrom/widget/ListView;)I
    .locals 1
    .param p1, "listView"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 326
    const v0, 0x7a0e0127

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->addStaticItem(Lcom/tencent/qrom/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Lcom/tencent/qrom/widget/ListView;)I
    .locals 1
    .param p1, "listView"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 330
    const v0, 0x7a0e0129

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->addStaticItem(Lcom/tencent/qrom/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Lcom/tencent/qrom/widget/ListView;I)I
    .locals 4
    .param p1, "listView"    # Lcom/tencent/qrom/widget/ListView;
    .param p2, "textResId"    # I

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7a03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 319
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 320
    invoke-virtual {p1, v0}, Lcom/tencent/qrom/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 321
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mStaticItemCount:I

    .line 322
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private addStaticItem(Lcom/tencent/qrom/widget/ListView;Ljava/lang/String;)I
    .locals 6
    .param p1, "listView"    # Lcom/tencent/qrom/widget/ListView;
    .param p2, "textRes"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7a030020

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 336
    .local v2, "customView":Landroid/view/View;
    const v3, 0x7a090031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    .local v0, "curRingTint":Landroid/widget/TextView;
    const v3, 0x7a090030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 338
    .local v1, "curRingTxt":Landroid/widget/TextView;
    const v3, 0x7a0e00ba

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {p1, v2}, Lcom/tencent/qrom/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 341
    iget v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mStaticItemCount:I

    .line 342
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    return v3
.end method

.method private getListPosition(I)I
    .locals 1
    .param p1, "ringtoneManagerPos"    # I

    .prologue
    .line 566
    if-gez p1, :cond_0

    .line 568
    .end local p1    # "ringtoneManagerPos":I
    :goto_0
    return p1

    .restart local p1    # "ringtoneManagerPos":I
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getPositionInListview(Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 5
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "mExistingUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, -0x1

    .line 290
    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 291
    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 292
    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 293
    .local v1, "mCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 295
    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    .end local v0    # "i":I
    .end local v1    # "mCount":I
    :goto_1
    return v0

    .line 299
    .restart local v0    # "i":I
    .restart local v1    # "mCount":I
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 300
    const-string v3, "RingtonePickerActivity"

    const-string v4, "not find"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 301
    goto :goto_1

    .line 293
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "mCount":I
    :cond_2
    move v0, v2

    .line 306
    goto :goto_1
.end method

.method private getRingTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uriRing"    # Landroid/net/Uri;

    .prologue
    .line 770
    const/4 v6, 0x0

    .line 772
    .local v6, "mCurrentCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 773
    .local v7, "mTitle":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 785
    if-eqz v6, :cond_0

    .line 786
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v8, v7

    .end local v7    # "mTitle":Ljava/lang/String;
    .local v8, "mTitle":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 776
    .end local v8    # "mTitle":Ljava/lang/String;
    .restart local v7    # "mTitle":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCurrentprojection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 777
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 778
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 779
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 780
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    :cond_2
    if-eqz v6, :cond_3

    .line 786
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v7

    .end local v7    # "mTitle":Ljava/lang/String;
    .restart local v8    # "mTitle":Ljava/lang/String;
    goto :goto_0

    .line 785
    .end local v8    # "mTitle":Ljava/lang/String;
    .restart local v7    # "mTitle":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 786
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .param p1, "listPos"    # I

    .prologue
    .line 560
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private initSdcardFilter()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private playRingtone(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "delayMs"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    iput p1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSampleRingtonePos:I

    .line 443
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    return-void
.end method

.method private registerSdcardReceiver()V
    .locals 2

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->initSdcardFilter()V

    .line 690
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->broadcastRec:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSdcardFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 691
    return-void
.end method

.method private saveRingForRingType(ILjava/lang/String;)V
    .locals 2
    .param p1, "ringType"    # I
    .param p2, "ringTitle"    # Ljava/lang/String;

    .prologue
    .line 757
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 758
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_ring"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 762
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_notification"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 764
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_alarm"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setActionBarStyle()V
    .locals 7

    .prologue
    .line 572
    iget-object v4, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    if-eqz v4, :cond_0

    .line 575
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 577
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7a03005e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 578
    .local v0, "customActionBarView":Landroid/view/View;
    const v4, 0x7a09002e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 579
    .local v3, "saveMenuItem":Landroid/view/View;
    new-instance v4, Lcom/tencent/qrom/app/QromRingtonePickerActivity$3;

    invoke-direct {v4, p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity$3;-><init>(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    const v4, 0x7a09002f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 586
    .local v1, "discardMenuItem":Landroid/view/View;
    new-instance v4, Lcom/tencent/qrom/app/QromRingtonePickerActivity$4;

    invoke-direct {v4, p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity$4;-><init>(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v4, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    const/16 v5, 0x10

    const/16 v6, 0x1a

    invoke-virtual {v4, v5, v6}, Lcom/tencent/qrom/app/ActionBar;->setDisplayOptions(II)V

    .line 597
    iget-object v4, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    invoke-virtual {v4, v0}, Lcom/tencent/qrom/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 599
    .end local v0    # "customActionBarView":Landroid/view/View;
    .end local v1    # "discardMenuItem":Landroid/view/View;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "saveMenuItem":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setActionBarStyle(I)V
    .locals 3
    .param p1, "title"    # I

    .prologue
    const/4 v2, 0x1

    .line 601
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/ActionBar;->setTitle(I)V

    .line 607
    :cond_0
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 557
    :cond_1
    return-void
.end method

.method private unregisterSdcardReceiver()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->broadcastRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 695
    return-void
.end method


# virtual methods
.method public onButtonClick(I)V
    .locals 11
    .param p1, "which"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 354
    const v7, 0x7a09002e

    if-ne p1, v7, :cond_3

    move v1, v5

    .line 355
    .local v1, "positiveResult":Z
    :goto_0
    iget-boolean v7, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bChooseOtherRing:Z

    if-eqz v7, :cond_7

    .line 357
    iget-object v7, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    if-eqz v7, :cond_0

    .line 358
    iget-object v7, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    invoke-virtual {v7}, Landroid/media/Ringtone;->stop()V

    .line 360
    :cond_0
    if-eqz v1, :cond_6

    .line 362
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .local v4, "values":Landroid/content/ContentValues;
    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    if-eq v6, v9, :cond_2

    .line 364
    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    if-ne v6, v5, :cond_4

    .line 365
    const-string v6, "is_ringtone"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 373
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    :cond_2
    iget v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    iget-object v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getRingTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->saveRingForRingType(ILjava/lang/String;)V

    .line 376
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 377
    .local v2, "resultIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingUri:Landroid/net/Uri;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0, v9, v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 425
    .end local v2    # "resultIntent":Landroid/content/Intent;
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->finish()V

    .line 426
    return-void

    .end local v1    # "positiveResult":Z
    :cond_3
    move v1, v6

    .line 354
    goto :goto_0

    .line 367
    .restart local v1    # "positiveResult":Z
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_4
    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    if-ne v6, v8, :cond_5

    .line 368
    const-string v6, "is_notification"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 370
    :cond_5
    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    if-ne v6, v10, :cond_1

    .line 371
    const-string v6, "is_alarm"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 380
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_6
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setResult(I)V

    goto :goto_2

    .line 384
    :cond_7
    iget-object v7, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v7}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 386
    if-eqz v1, :cond_f

    .line 388
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 389
    .restart local v2    # "resultIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 390
    .local v3, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 391
    .local v0, "defaultUri":Landroid/net/Uri;
    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    iget v7, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v6, v7, :cond_b

    .line 393
    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 394
    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    if-ne v6, v5, :cond_9

    .line 395
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 409
    :cond_8
    :goto_3
    iget v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v5, v6, :cond_e

    .line 410
    iget v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    invoke-direct {p0, v0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getRingTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->saveRingForRingType(ILjava/lang/String;)V

    .line 413
    :goto_4
    const-string v5, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v9, v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 396
    :cond_9
    iget v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    if-ne v5, v8, :cond_a

    .line 397
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 398
    :cond_a
    iget v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    if-ne v5, v10, :cond_8

    .line 399
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "alarm_alert"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 400
    :cond_b
    iget v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSilentPos:I

    if-ne v5, v6, :cond_c

    .line 402
    const/4 v3, 0x0

    goto :goto_3

    .line 403
    :cond_c
    iget v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCurrentRingtonePos:I

    if-ne v5, v6, :cond_d

    iget-boolean v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mIsDefault:Z

    if-nez v5, :cond_d

    .line 405
    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    goto :goto_3

    .line 407
    :cond_d
    iget-object v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v6, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v6}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    .line 412
    :cond_e
    iget v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    invoke-direct {p0, v3}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getRingTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->saveRingForRingType(ILjava/lang/String;)V

    goto :goto_4

    .line 416
    .end local v0    # "defaultUri":Landroid/net/Uri;
    .end local v2    # "resultIntent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_f
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setResult(I)V

    goto/16 :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 158
    invoke-super {p0, p1}, Landroid/app/QromActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const v1, 0x7a030060

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setContentView(I)V

    .line 160
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getQromActionBar()Lcom/tencent/qrom/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    .line 161
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    invoke-virtual {v1, v8}, Lcom/tencent/qrom/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    invoke-virtual {v1, v8}, Lcom/tencent/qrom/app/ActionBar;->setHomeButtonEnabledQQ(Z)V

    .line 164
    const v1, 0x7a090047

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/ListView;

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    .line 165
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mOnItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v8}, Lcom/tencent/qrom/widget/ListView;->setChoiceMode(I)V

    .line 168
    const v1, 0x7a090048

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/ListView;

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    .line 169
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mOnItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v8}, Lcom/tencent/qrom/widget/ListView;->setChoiceMode(I)V

    .line 172
    const v1, 0x7a090049

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mTextView:Landroid/widget/TextView;

    .line 173
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 175
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 181
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "system_settings"

    invoke-virtual {v7, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bSystemSettingsCall:Z

    .line 182
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mHasDefaultItem:Z

    .line 183
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 184
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 185
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 188
    :cond_0
    if-eqz p1, :cond_1

    .line 189
    const-string v1, "clicked_pos"

    invoke-virtual {p1, v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    .line 192
    :cond_1
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mHasSilentItem:Z

    .line 195
    new-instance v1, Landroid/media/RingtoneManager;

    invoke-direct {v1, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 198
    const-string v1, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 200
    .local v6, "includeDrm":Z
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1, v6}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 203
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    .line 204
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    if-eq v1, v9, :cond_2

    .line 205
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 209
    :cond_2
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 210
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    const v2, 0x7a0e00b2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/app/ActionBar;->setTitle(I)V

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setVolumeControlStream(I)V

    .line 220
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 222
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 223
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 224
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->onPrepareListView(Lcom/tencent/qrom/widget/ListView;)V

    .line 225
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7a03005f

    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v8, [Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mLabelColumn:Ljava/lang/String;

    aput-object v1, v4, v10

    new-array v5, v8, [I

    const v1, 0x7a090046

    aput v1, v5, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 226
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v10}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 232
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    if-le v1, v9, :cond_3

    .line 233
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2, v8}, Lcom/tencent/qrom/widget/ListView;->setItemChecked(IZ)V

    .line 234
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    .line 236
    :cond_3
    return-void

    .line 211
    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_4
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 212
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    const v2, 0x7a0e00b3

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 214
    :cond_5
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    const v2, 0x7a0e00b1

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 612
    const/4 v1, 0x1

    const v2, 0x7a0e00b4

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 613
    .local v0, "mChoose":Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 614
    invoke-super {p0, p1}, Landroid/app/QromActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bChooseOtherRing:Z

    .line 539
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->unregisterSdcardReceiver()V

    .line 540
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/qrom/app/QromRingtonePickerActivity$2;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity$2;-><init>(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 546
    invoke-super {p0}, Landroid/app/QromActivity;->onDestroy()V

    .line 547
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 619
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v10

    .line 672
    :goto_0
    return v1

    .line 621
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 622
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 625
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/ActionBar;->splitActionbar_hide()V

    .line 626
    const v1, 0x7a0e00b7

    invoke-direct {p0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setActionBarStyle(I)V

    .line 627
    iput-boolean v9, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bChooseOtherRing:Z

    .line 628
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 629
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v11}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 630
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v10}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 631
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setVolumeControlStream(I)V

    .line 634
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 635
    .local v8, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->projection:[Ljava/lang/String;

    const-string v5, "title_key"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 641
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 642
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 643
    .local v7, "num":I
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 644
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;

    .line 659
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7a03005f

    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mLabelColumn:Ljava/lang/String;

    aput-object v1, v4, v10

    new-array v5, v9, [I

    const v1, 0x7a090046

    aput v1, v5, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 660
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 661
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    .line 662
    .local v6, "mActualUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    .line 663
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getPositionInListview(Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    .line 666
    :goto_1
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 667
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2, v9}, Lcom/tencent/qrom/widget/ListView;->setItemChecked(IZ)V

    .line 668
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    :cond_2
    move v1, v9

    .line 670
    goto/16 :goto_0

    .line 647
    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    .end local v6    # "mActualUri":Landroid/net/Uri;
    .end local v7    # "num":I
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v11}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 648
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v11}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 649
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v9

    .line 650
    goto/16 :goto_0

    .line 654
    :cond_4
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v11}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 655
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v11}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 656
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v9

    .line 657
    goto/16 :goto_0

    .line 665
    .restart local v0    # "listAdapter":Landroid/widget/ListAdapter;
    .restart local v6    # "mActualUri":Landroid/net/Uri;
    .restart local v7    # "num":I
    :cond_5
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v6}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getPositionInListview(Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    goto :goto_1

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 520
    invoke-super {p0}, Landroid/app/QromActivity;->onPause()V

    .line 521
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 522
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 525
    :cond_0
    return-void
.end method

.method public onPrepareListView(Lcom/tencent/qrom/widget/ListView;)V
    .locals 7
    .param p1, "listView"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mIsDefault:Z

    .line 253
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mUriCurrentItem:Landroid/net/Uri;

    .line 254
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mIsDefault:Z

    if-nez v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCurrentprojection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 256
    .local v6, "mCurrentCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 258
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCurrentTitle:Ljava/lang/String;

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCurrentTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->addCurrentItem(Lcom/tencent/qrom/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCurrentRingtonePos:I

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    .line 266
    .end local v6    # "mCurrentCursor":Landroid/database/Cursor;
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_2

    .line 267
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->addDefaultRingtoneItem(Lcom/tencent/qrom/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtonePos:I

    .line 269
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mIsDefault:Z

    if-eqz v0, :cond_5

    .line 270
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    .line 274
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_3

    .line 275
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->addSilentItem(Lcom/tencent/qrom/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSilentPos:I

    .line 278
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 279
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    .line 284
    :cond_3
    :goto_1
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 285
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    .line 288
    :cond_4
    return-void

    .line 272
    :cond_5
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    goto :goto_0

    .line 281
    :cond_6
    iget v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/app/QromActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 432
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->registerSdcardReceiver()V

    .line 515
    invoke-super {p0}, Landroid/app/QromActivity;->onResume()V

    .line 516
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/app/QromActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 438
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 530
    invoke-super {p0}, Landroid/app/QromActivity;->onStop()V

    .line 531
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 532
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 535
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 447
    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bChooseOtherRing:Z

    if-eqz v1, :cond_3

    .line 448
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 451
    :cond_0
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSampleRingtonePos:I

    iput v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mPreviousClickedPos:I

    .line 452
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 453
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingUri:Landroid/net/Uri;

    .line 457
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    .line 460
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 464
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 465
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 466
    :cond_4
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_5

    .line 467
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    goto :goto_0

    .line 475
    :cond_5
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 476
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 477
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 481
    :cond_6
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_8

    .line 482
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_7

    .line 483
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 485
    :cond_7
    iget-object v0, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 493
    .local v0, "ringtone":Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 506
    :goto_1
    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 495
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    :cond_8
    iget v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCurrentRingtonePos:I

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mIsDefault:Z

    if-nez v1, :cond_9

    .line 496
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    .line 497
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 498
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mChoosedRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_0

    .line 503
    :cond_9
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0    # "ringtone":Landroid/media/Ringtone;
    goto :goto_1
.end method

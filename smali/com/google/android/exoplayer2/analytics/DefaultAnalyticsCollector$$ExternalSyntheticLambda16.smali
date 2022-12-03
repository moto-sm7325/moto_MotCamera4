.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 12

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    .line 1
    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    const/4 v1, 0x4

    const-string v2, "initialCapacity"

    .line 2
    invoke-static {v1, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v8, v1

    move v9, v2

    move v10, v9

    .line 3
    :goto_0
    iget v1, p2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v9, v1, :cond_1

    .line 4
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    aget v6, p3, v9

    move-object v1, v11

    move v2, p1

    move-object v3, p2

    move v4, v9

    move-object v5, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;-><init>(ILcom/google/android/exoplayer2/source/TrackGroup;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V

    add-int/lit8 v2, v10, 0x1

    .line 5
    array-length v1, v8

    if-ge v1, v2, :cond_0

    .line 6
    array-length v1, v8

    .line 7
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    .line 8
    :cond_0
    aput-object v11, v8, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v8, v10}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/Player$Commands;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    check-cast p1, Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    const-string v0, "$this_apply"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 3
    iget-object v1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v2, 0x7f120387

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 7
    iget-object v1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v2, 0x7f120386

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 10
    iget-object v1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v2, 0x7f120081

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    iget-object v3, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 14
    iput-object v2, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 15
    iget-object p1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v1, 0x7f120388

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 18
    iget-object v1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 19
    iput-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

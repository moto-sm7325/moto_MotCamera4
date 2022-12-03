.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast v0, [I

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    .line 1
    aget v10, v0, p1

    .line 2
    iget v0, v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportWidth:I

    iget v1, v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportHeight:I

    iget-boolean v2, v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportOrientationMayChange:Z

    const v11, 0x7fffffff

    if-eq v0, v11, :cond_7

    if-ne v1, v11, :cond_0

    goto/16 :goto_5

    :cond_0
    move v4, v11

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v5, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v5, :cond_6

    .line 4
    iget-object v5, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v5, v5, v3

    .line 5
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v6, :cond_5

    iget v7, v5, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v7, :cond_5

    if-eqz v2, :cond_3

    if-le v6, v7, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-le v0, v1, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-eq v14, v15, :cond_3

    move v14, v0

    move v15, v1

    goto :goto_3

    :cond_3
    move v15, v0

    move v14, v1

    :goto_3
    mul-int v12, v6, v14

    mul-int v13, v7, v15

    if-lt v12, v13, :cond_4

    .line 6
    new-instance v7, Landroid/graphics/Point;

    invoke-static {v13, v6}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v6

    invoke-direct {v7, v15, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    .line 7
    :cond_4
    new-instance v6, Landroid/graphics/Point;

    invoke-static {v12, v7}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v7

    invoke-direct {v6, v7, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object v7, v6

    .line 8
    :goto_4
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->width:I

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v12, v6, v5

    .line 9
    iget v13, v7, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148    # 0.98f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    if-lt v6, v13, :cond_5

    iget v6, v7, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v14

    float-to-int v6, v6

    if-lt v5, v6, :cond_5

    if-ge v12, v4, :cond_5

    move v4, v12

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move v12, v4

    goto :goto_6

    :cond_7
    :goto_5
    move v12, v11

    .line 10
    :goto_6
    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    .line 11
    invoke-static {v0, v1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    new-array v0, v0, [Ljava/lang/Object;

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 12
    :goto_7
    iget v0, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v0, :cond_d

    .line 13
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, v14

    .line 14
    iget v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v0, v2, :cond_8

    goto :goto_8

    :cond_8
    mul-int/2addr v1, v0

    goto :goto_9

    :cond_9
    :goto_8
    move v1, v2

    :goto_9
    if-eq v12, v11, :cond_b

    if-eq v1, v2, :cond_a

    if-gt v1, v12, :cond_a

    goto :goto_a

    :cond_a
    const/4 v7, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v7, 0x1

    .line 15
    :goto_b
    new-instance v16, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    aget v5, p3, v14

    move-object/from16 v0, v16

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move-object v4, v9

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;-><init>(ILcom/google/android/exoplayer2/source/TrackGroup;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;IIZ)V

    add-int/lit8 v0, v15, 0x1

    .line 16
    array-length v1, v13

    if-ge v1, v0, :cond_c

    .line 17
    array-length v1, v13

    .line 18
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 19
    :cond_c
    aput-object v16, v13, v15

    add-int/lit8 v14, v14, 0x1

    move v15, v0

    goto :goto_7

    .line 20
    :cond_d
    invoke-static {v13, v15}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/DeviceInfo;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/Preference;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_b

    const p2, 0x7f1203c0

    .line 3
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusWithVSTBSupported()Z

    move-result p2

    if-nez p2, :cond_2

    const p2, 0x7f1203c2

    .line 7
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/VideoStabSwitchPreference;

    .line 9
    iget-boolean p2, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1}, Landroidx/preference/Preference;->performClick()V

    .line 11
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 13
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v2, 0x7f1204d0

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(\n     \u2026t_turn_off_stabilization)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 15
    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    aput-object p0, v2, v3

    .line 16
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "format(format, *args)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p2, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 19
    :cond_2
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 20
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 21
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast p2, Lcom/motorola/camera/VideoFormat;

    const/4 v1, 0x0

    if-nez p2, :cond_3

    move-object p2, v1

    goto :goto_2

    :cond_3
    iget-object p2, p2, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 24
    :goto_2
    invoke-static {p2}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 25
    sget-object p2, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    .line 26
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/motorola/camera/utility/SizeUtility;->getAspectRatio(Landroid/util/Size;)F

    move-result p2

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/VideoFormat;

    .line 28
    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    iget-object v4, v2, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 29
    iget-object v3, v2, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v3}, Lcom/motorola/camera/utility/SizeUtility;->getAspectRatio(Landroid/util/Size;)F

    move-result v3

    .line 30
    invoke-static {p2, v3}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 31
    iget-object v3, v2, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_5

    .line 33
    iget-object v3, v2, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_7

    goto :goto_4

    .line 34
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_5

    :goto_4
    if-eqz v1, :cond_8

    .line 35
    iget-object v3, v2, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    const-string v4, "format.mVideoCaptureRate.lower"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 36
    iget-object v4, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    const-string/jumbo v5, "targetFormat.mVideoCaptureRate.lower"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-le v3, v4, :cond_5

    :cond_8
    move-object v1, v2

    goto :goto_3

    :cond_9
    if-nez v1, :cond_a

    .line 37
    new-instance v1, Lcom/motorola/camera/VideoFormat;

    .line 38
    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    sget-object p2, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    .line 39
    invoke-direct {v1, p1, p2, v0}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    .line 40
    :cond_a
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 42
    sget-object p2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 43
    invoke-virtual {p1, p0, v1, p2}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;Lcom/motorola/camera/settings/CameraType;)V

    .line 44
    invoke-static {p0, p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->syncVideoFormat(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/VideoFormat;)V

    :cond_b
    return v0
.end method

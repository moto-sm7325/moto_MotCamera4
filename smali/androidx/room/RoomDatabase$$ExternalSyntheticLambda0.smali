.class public final synthetic Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;
.implements Lcom/motorola/camera/saving/ImageCaptureManager$ImageReceivedListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$ListSizeChanged;
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/utility/InAppUpdateUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmKeysLoaded()V

    return-void
.end method

.method public onListSizeChange()V
    .locals 1

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->updateTranslations()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->onActionsListChanged()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;

    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->$r8$clinit:I

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->updatePreview()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->defaultOptions(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zza(Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->startForInAppUpdate()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    .line 8
    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->RETRY_UPDATE_FAILED:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    .line 9
    invoke-direct {p1, v0, v2}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public timeUsToTargetTime(J)J
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p0

    return-wide p0
.end method

.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Z)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;Z)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;Z)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v3, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->Companion:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$Companion;

    .line 1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->autoZoom:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setSelected(Z)V

    if-eqz p0, :cond_1

    .line 4
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f110449

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f110448

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    .line 7
    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 8
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mcfTorch:Z

    .line 11
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoSetting:Ljava/util/Map;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v4, "FLASH.mName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mcfTorch:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateItems(ZLkotlin/jvm/functions/Function0;)V

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TORCH_AUTO_TYPE"

    .line 14
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_TORCH_AUTO_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    .line 16
    :pswitch_3
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 17
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSessionRemosaicEstimate:[J

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    aget-wide v1, v3, v1

    goto :goto_2

    :cond_3
    aget-wide v1, v3, v2

    :goto_2
    if-eqz v0, :cond_4

    .line 21
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEngineMfnrEstimate:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    move-wide v1, v3

    .line 22
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onCaptureEstimate(J)V

    return-void

    .line 23
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/List;

    .line 24
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->animateShow()V

    if-nez p0, :cond_6

    .line 26
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->queryLastCapture()V

    :cond_6
    :goto_3
    return-void

    .line 27
    :pswitch_5
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    .line 28
    iget-object v3, v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mPrivateTempVideoFile:Ljava/io/File;

    if-eqz v3, :cond_9

    if-eqz p0, :cond_8

    .line 29
    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 30
    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 31
    iget-object v4, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 32
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    const/16 v6, 0x4000

    .line 33
    invoke-virtual {v5, v6}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 34
    invoke-interface {p0}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v6

    invoke-virtual {v5}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v5

    .line 35
    invoke-static {v5}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v5

    .line 36
    invoke-static {v3, v5}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 37
    iput-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    move v1, v2

    goto :goto_4

    :cond_7
    const-string v2, "SaveImageService"

    const-string v4, "Unable to move timelapse file"

    .line 38
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v1, :cond_8

    .line 39
    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 40
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    .line 41
    :cond_8
    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    .line 42
    :cond_9
    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mVideoThumbFile:Ljava/io/File;

    .line 43
    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-void

    .line 44
    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Z

    sget v2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->$r8$clinit:I

    .line 45
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->enableDisplayFlash(Z)V

    .line 46
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

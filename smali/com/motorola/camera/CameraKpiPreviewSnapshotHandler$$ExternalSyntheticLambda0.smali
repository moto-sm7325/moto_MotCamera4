.class public final synthetic Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string p1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.BannerPromptComponent.BannerData"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    .line 5
    iget-boolean p1, p2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->display:Z

    if-eqz p1, :cond_d

    .line 6
    iget-object p1, p2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerIcon:Landroid/widget/ImageView;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-nez p1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerTitle:Landroid/widget/TextView;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-nez p1, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerText:Landroid/widget/TextView;

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-nez p1, :cond_9

    goto :goto_3

    .line 15
    :cond_9
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveButtonText:Ljava/lang/String;

    .line 16
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->acceptButton:Landroid/widget/Button;

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-nez p1, :cond_b

    goto :goto_4

    .line 18
    :cond_b
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeButtonText:Ljava/lang/String;

    .line 19
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismissButton:Landroid/widget/Button;

    if-nez p2, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_4
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 21
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "IS_SELECTED"

    .line 22
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 24
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->BANNER_PROMPT_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_5

    .line 25
    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismiss()V

    :goto_5
    return-void

    .line 26
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    const-string/jumbo p0, "this$0"

    .line 27
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result p0

    if-eqz p0, :cond_12

    iget-boolean p0, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-nez p0, :cond_12

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result p0

    if-eqz p0, :cond_12

    iget-boolean p0, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    if-nez p0, :cond_12

    .line 30
    iput-boolean v1, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    .line 31
    instance-of p0, p2, Landroid/os/Bundle;

    if-eqz p0, :cond_e

    check-cast p2, Landroid/os/Bundle;

    goto :goto_6

    :cond_e
    const/4 p2, 0x0

    :goto_6
    const-wide/16 p0, 0x0

    if-nez p2, :cond_f

    move-wide v4, p0

    goto :goto_7

    :cond_f
    const-string v0, "ON_UP"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_7
    cmp-long p0, v4, p0

    if-lez p0, :cond_12

    .line 32
    iget-object p0, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object p1, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraDrawTimestamps:[J

    const/4 p2, 0x0

    aget-wide v6, p1, p2

    cmp-long p1, v4, v6

    if-lez p1, :cond_10

    move v1, p2

    .line 34
    :cond_10
    iget-object p1, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    aget-object v4, p1, v1

    .line 35
    iget-object p2, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->area(Landroid/graphics/Rect;)I

    move-result p2

    invoke-static {p2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p2

    aput-object p2, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    if-nez v4, :cond_11

    goto :goto_8

    .line 37
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 38
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 40
    new-instance v5, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v5, p1, p0}, Landroid/util/Size;-><init>(II)V

    .line 41
    iget v6, v3, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->orientation:I

    .line 42
    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 43
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 44
    new-instance p1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda1;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;Ljava/nio/Buffer;Landroid/util/Size;IJ)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    throw p1

    :cond_12
    :goto_8
    return-void

    .line 46
    :goto_9
    iget-object p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo p2, "this$0"

    .line 47
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, p2, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 49
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

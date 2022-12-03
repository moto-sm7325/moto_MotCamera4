.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    return-void

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->hide()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-class v0, Lcom/motorola/camera/env/SettingsGlobal;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "transition_animation_scale"

    const/high16 v4, 0x3f000000    # 0.5f

    .line 8
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v2

    .line 9
    sput-boolean v2, Lcom/motorola/camera/env/SettingsGlobal;->mNeedRestFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-nez v4, :cond_0

    goto/16 :goto_9

    .line 12
    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    .line 14
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 15
    iget-object v5, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 16
    iget-object v5, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 17
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 19
    iget-object v5, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v7, v5, Landroid/app/Activity;

    if-eqz v7, :cond_1

    check-cast v5, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    if-ne v5, v1, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v6

    :goto_3
    if-eqz v5, :cond_4

    .line 20
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 21
    iget-object v7, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 22
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x42400000    # 48.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v5, v7

    .line 23
    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 24
    :cond_4
    iget v5, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    if-eq v5, v8, :cond_9

    if-ne v5, v7, :cond_5

    goto :goto_6

    .line 25
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 26
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eqz v0, :cond_6

    .line 27
    aget v0, v3, v6

    sub-int v0, v5, v0

    iget-object v6, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_4

    :cond_6
    aget v0, v3, v6

    neg-int v0, v0

    .line 28
    :goto_4
    iget v6, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    const/16 v8, 0xb4

    if-ne v6, v8, :cond_7

    .line 29
    iget-object v6, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 30
    :cond_7
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 31
    iget v6, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v6, v8, :cond_8

    aget v1, v3, v1

    neg-int v1, v1

    iget-object v3, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_5

    :cond_8
    aget v1, v3, v1

    neg-int v3, v1

    :goto_5
    add-int/2addr v2, v3

    goto :goto_8

    .line 32
    :cond_9
    :goto_6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 33
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eqz v0, :cond_a

    .line 34
    aget v0, v3, v6

    sub-int v0, v9, v0

    iget-object v10, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getWidth()I

    move-result v10

    sub-int/2addr v0, v10

    goto :goto_7

    .line 35
    :cond_a
    aget v0, v3, v6

    neg-int v0, v0

    .line 36
    :goto_7
    iget v10, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v10, v7, :cond_b

    .line 37
    iget-object v7, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getWidth()I

    move-result v7

    add-int/2addr v0, v7

    .line 38
    :cond_b
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    add-int/2addr v7, v0

    div-int/lit8 v0, v9, 0x2

    sub-int v0, v7, v0

    .line 39
    aget v1, v3, v1

    neg-int v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v1, v5, 0x2

    sub-int/2addr v2, v1

    .line 40
    iget v1, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v1, v8, :cond_c

    iget-object v1, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v6

    :cond_c
    add-int/2addr v2, v6

    move v7, v5

    move v5, v9

    .line 41
    :goto_8
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v5, v0

    add-int/2addr v7, v2

    invoke-direct {v1, v0, v2, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07005e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 43
    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v6, v0

    .line 44
    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;

    move-object v3, v2

    move-object v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;Landroid/graphics/Rect;JF)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    .line 45
    :goto_9
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_PHOTO:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

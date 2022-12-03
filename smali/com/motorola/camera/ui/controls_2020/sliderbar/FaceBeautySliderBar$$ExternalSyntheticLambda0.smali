.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    return v4

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 7
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "IS_SELECTED"

    .line 9
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v0, v5}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result p1

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 16
    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr p1, v0

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 20
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v0, p0

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    return v3

    .line 22
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo v0, "this$0"

    .line 23
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    return v4

    .line 25
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    const-string/jumbo p1, "this$0"

    .line 26
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->seekBarEnable:Z

    xor-int/2addr p0, v3

    return p0

    .line 28
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Collection;

    const-string/jumbo v0, "this$0"

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 31
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 33
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    if-nez p2, :cond_5

    goto :goto_4

    .line 34
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_6

    goto :goto_5

    .line 35
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_7

    .line 36
    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    .line 37
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->resetPreview()V

    .line 38
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownX:F

    .line 39
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownY:F

    .line 40
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v2

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    add-float/2addr v6, v2

    .line 42
    invoke-direct {p2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 43
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 44
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v4, p0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/PointF;ZLcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    .line 46
    monitor-enter p1

    .line 47
    :try_start_0
    iput-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->waitColorUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p1

    .line 49
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 50
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->updateIconsVisibility()V

    .line 51
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SPOT_COLOR_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_c

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit p1

    throw p0

    :cond_7
    :goto_5
    const/4 p2, 0x2

    if-nez v2, :cond_8

    goto/16 :goto_a

    .line 53
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p2, :cond_d

    .line 54
    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    .line 55
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownX:F

    sub-float/2addr p2, v2

    .line 56
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownY:F

    sub-float/2addr v2, v5

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v5, p2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p2, v2

    .line 59
    new-instance v2, Landroid/graphics/RectF;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p2

    .line 61
    invoke-direct {v2, v5, p2, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    .line 63
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 64
    iget-object p2, p2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 65
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p2, 0x5

    int-to-float p2, p2

    .line 66
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v5

    .line 67
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, p2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    .line 68
    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    .line 69
    invoke-direct {v5, v6, v7, v8, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    iget p1, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    iget p2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_9

    .line 71
    iget p1, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p2

    goto :goto_6

    .line 72
    :cond_9
    iget p1, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v1

    add-float/2addr p2, p1

    iget p1, v2, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_a

    .line 73
    iget p1, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p2

    :goto_6
    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    goto :goto_7

    .line 74
    :cond_a
    iget p1, v2, Landroid/graphics/RectF;->left:F

    .line 75
    :goto_7
    iget p2, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v1

    sub-float/2addr p2, v6

    iget v6, v2, Landroid/graphics/RectF;->top:F

    cmpl-float p2, p2, v6

    if-lez p2, :cond_b

    .line 76
    iget p2, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_8

    .line 77
    :cond_b
    iget p2, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v1

    add-float/2addr v6, p2

    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v6, p2

    if-gez p2, :cond_c

    .line 78
    iget p2, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    :goto_8
    div-float/2addr v5, v1

    sub-float/2addr p2, v5

    goto :goto_9

    .line 79
    :cond_c
    iget p2, v2, Landroid/graphics/RectF;->top:F

    .line 80
    :goto_9
    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 81
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 82
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 83
    new-instance p2, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, v4, p0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/PointF;ZLcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_c

    :cond_d
    :goto_a
    if-nez v2, :cond_e

    goto :goto_b

    .line 85
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_f

    .line 86
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v2

    invoke-direct {p2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 87
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 88
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v3, p0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/PointF;ZLcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    .line 90
    monitor-enter p1

    .line 91
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->startHideRingAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    monitor-exit p1

    .line 93
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    .line 94
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_c

    :catchall_1
    move-exception p0

    .line 95
    monitor-exit p1

    throw p0

    .line 96
    :cond_f
    :goto_b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v3, v4

    :goto_c
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

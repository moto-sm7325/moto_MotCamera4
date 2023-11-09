.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isClosing:Z

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 6
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isClosing:Z

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    if-nez v4, :cond_4

    move p1, v3

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isClosing:Z

    :cond_5
    :goto_2
    if-nez v4, :cond_6

    goto :goto_3

    .line 9
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_3
    return v3

    .line 10
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Collection;

    const-string/jumbo v0, "this$0"

    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 13
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 15
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    if-nez p2, :cond_7

    goto :goto_5

    .line 16
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_5
    const/high16 p2, 0x40000000    # 2.0f

    if-nez v4, :cond_8

    goto :goto_6

    .line 17
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_9

    .line 18
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->resetPreview()V

    .line 20
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownX:F

    .line 21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownY:F

    .line 22
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, p2

    add-float/2addr v5, v4

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, p2

    add-float/2addr v6, v4

    .line 24
    invoke-direct {v1, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 25
    invoke-virtual {p0, v1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->dispatchSpotColorRoiUpdate(Landroid/graphics/PointF;Z)V

    .line 26
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iput-boolean v2, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->waitColorUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p1

    .line 30
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 31
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->updateIconsVisibility()V

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SPOT_COLOR_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_d

    :catchall_0
    move-exception p0

    .line 33
    monitor-exit p1

    throw p0

    :cond_9
    :goto_6
    if-nez v4, :cond_a

    goto/16 :goto_b

    .line 34
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_f

    .line 35
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    .line 36
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownX:F

    sub-float/2addr v1, v4

    .line 37
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownY:F

    sub-float/2addr v4, v5

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v5, v1

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, v4

    .line 40
    new-instance v4, Landroid/graphics/RectF;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v1

    .line 42
    invoke-direct {v4, v5, v1, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 43
    new-instance p1, Landroid/graphics/Rect;

    .line 44
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 45
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 46
    invoke-direct {p1, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x5

    int-to-float v1, v1

    .line 47
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    .line 48
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    .line 49
    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    .line 50
    invoke-direct {v5, v6, v7, v8, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 51
    iget p1, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    sub-float/2addr p1, v1

    iget v1, v4, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_b

    .line 52
    iget p1, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    goto :goto_7

    .line 53
    :cond_b
    iget p1, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    add-float/2addr v1, p1

    iget p1, v4, Landroid/graphics/RectF;->right:F

    cmpg-float p1, v1, p1

    if-gez p1, :cond_c

    .line 54
    iget p1, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    :goto_7
    div-float/2addr v1, p2

    sub-float/2addr p1, v1

    goto :goto_8

    .line 55
    :cond_c
    iget p1, v4, Landroid/graphics/RectF;->left:F

    .line 56
    :goto_8
    iget v1, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, p2

    sub-float/2addr v1, v6

    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_d

    .line 57
    iget v1, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_9

    .line 58
    :cond_d
    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, p2

    add-float/2addr v6, v1

    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v6, v1

    if-gez v1, :cond_e

    .line 59
    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    :goto_9
    div-float/2addr v5, p2

    sub-float/2addr v1, v5

    goto :goto_a

    .line 60
    :cond_e
    iget v1, v4, Landroid/graphics/RectF;->top:F

    .line 61
    :goto_a
    invoke-virtual {v4, p1, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 62
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 63
    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->dispatchSpotColorRoiUpdate(Landroid/graphics/PointF;Z)V

    .line 64
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_d

    :cond_f
    :goto_b
    if-nez v4, :cond_10

    goto :goto_c

    .line 65
    :cond_10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_11

    .line 66
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p2

    add-float/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, p2

    add-float/2addr v5, v3

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 67
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->dispatchSpotColorRoiUpdate(Landroid/graphics/PointF;Z)V

    .line 68
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    .line 69
    monitor-enter p1

    .line 70
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->startHideRingAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    monitor-exit p1

    .line 72
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    .line 73
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_d

    :catchall_1
    move-exception p0

    .line 74
    monitor-exit p1

    throw p0

    .line 75
    :cond_11
    :goto_c
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v2, v3

    :goto_d
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

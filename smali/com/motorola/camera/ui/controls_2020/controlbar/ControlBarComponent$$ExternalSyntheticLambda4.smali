.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->NV_FRAME_COLLECTED_FINISHED:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p2, p1, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 5
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    .line 6
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_19

    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_19

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isControlPanelAvailableInCurrentMode()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_8

    .line 9
    :cond_1
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "TYPE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "DIRECTION"

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "ORIGIN"

    .line 11
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_19

    if-nez v2, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 p1, 0x2

    new-array v4, p1, [I

    move v5, v1

    :goto_0
    if-ge v5, p1, :cond_3

    const/4 v6, -0x1

    .line 12
    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v4}, Landroid/widget/ToggleButton;->getLocationOnScreen([I)V

    .line 14
    :goto_1
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v5, 0x0

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 15
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v5

    sub-float/2addr v4, v5

    .line 16
    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    goto/16 :goto_8

    .line 17
    :cond_8
    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 18
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->None:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const/16 v7, 0x5a

    const/4 v8, 0x1

    if-eq v2, v7, :cond_e

    const/16 v7, 0xb4

    const/4 v9, 0x4

    if-eq v2, v7, :cond_c

    const/16 v7, 0x10e

    if-eq v2, v7, :cond_a

    if-ne v0, v3, :cond_9

    goto :goto_4

    :cond_9
    if-ne v0, v9, :cond_10

    goto :goto_3

    :cond_a
    if-ne v0, p1, :cond_b

    goto :goto_4

    :cond_b
    if-ne v0, v8, :cond_10

    goto :goto_3

    :cond_c
    if-ne v0, v3, :cond_d

    goto :goto_3

    :cond_d
    if-ne v0, v9, :cond_10

    goto :goto_4

    :cond_e
    if-ne v0, p1, :cond_f

    :goto_3
    move-object v6, v5

    goto :goto_5

    :cond_f
    if-ne v0, v8, :cond_10

    :goto_4
    move-object v6, v4

    .line 19
    :cond_10
    :goto_5
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v8, :cond_12

    if-eq v0, p1, :cond_11

    move-object v4, v6

    goto :goto_6

    :cond_11
    move-object v4, v5

    :cond_12
    :goto_6
    const-string v0, "ON_DOWN"

    .line 20
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 21
    iget-wide v6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->lastCloseTimestamp:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v6, 0x96

    cmp-long p2, v2, v6

    if-gez p2, :cond_13

    move p2, v8

    goto :goto_7

    :cond_13
    move p2, v1

    :goto_7
    if-ne v4, v5, :cond_14

    .line 22
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez v0, :cond_19

    if-eqz p2, :cond_14

    goto :goto_8

    .line 23
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p2, v8, :cond_17

    if-eq p2, p1, :cond_15

    goto :goto_8

    .line 24
    :cond_15
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p0, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_8

    .line 25
    :cond_17
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p0, :cond_18

    goto :goto_8

    :cond_18
    invoke-virtual {p0, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_19
    :goto_8
    return-void

    .line 26
    :goto_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    .line 27
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v0, p1, :cond_1b

    .line 29
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1a

    .line 30
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 31
    :cond_1a
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1d

    .line 32
    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 33
    :cond_1b
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p2, p1, :cond_1c

    .line 34
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 35
    :cond_1c
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p2, p1, :cond_1d

    .line 36
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1d
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

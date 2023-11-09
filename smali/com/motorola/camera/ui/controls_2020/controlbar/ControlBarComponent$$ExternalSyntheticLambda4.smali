.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
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

    const/4 v0, 0x1

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

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_18

    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_18

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(Z)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 4
    :cond_0
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "TYPE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "DIRECTION"

    .line 5
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ORIGIN"

    .line 6
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    const/4 v4, 0x3

    if-ne p1, v4, :cond_18

    if-nez v3, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 p1, 0x2

    new-array v5, p1, [I

    move v6, v1

    :goto_0
    if-ge v6, p1, :cond_2

    const/4 v7, -0x1

    .line 7
    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v5}, Landroid/widget/ToggleButton;->getLocationOnScreen([I)V

    .line 9
    :goto_1
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :goto_2
    if-nez v6, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 10
    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v7}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY(Z)F

    move-result v6

    sub-float/2addr v5, v6

    .line 11
    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    goto/16 :goto_8

    .line 12
    :cond_7
    iget v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 13
    sget-object v5, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    sget-object v7, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->None:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const/16 v8, 0x5a

    if-eq v3, v8, :cond_d

    const/16 v8, 0xb4

    const/4 v9, 0x4

    if-eq v3, v8, :cond_b

    const/16 v8, 0x10e

    if-eq v3, v8, :cond_9

    if-ne v2, v4, :cond_8

    goto :goto_4

    :cond_8
    if-ne v2, v9, :cond_f

    goto :goto_3

    :cond_9
    if-ne v2, p1, :cond_a

    goto :goto_4

    :cond_a
    if-ne v2, v0, :cond_f

    goto :goto_3

    :cond_b
    if-ne v2, v4, :cond_c

    goto :goto_3

    :cond_c
    if-ne v2, v9, :cond_f

    goto :goto_4

    :cond_d
    if-ne v2, p1, :cond_e

    :goto_3
    move-object v7, v6

    goto :goto_5

    :cond_e
    if-ne v2, v0, :cond_f

    :goto_4
    move-object v7, v5

    .line 14
    :cond_f
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v0, :cond_11

    if-eq v2, p1, :cond_10

    move-object v5, v7

    goto :goto_6

    :cond_10
    move-object v5, v6

    :cond_11
    :goto_6
    const-string v2, "ON_DOWN"

    .line 15
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 16
    iget-wide v7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->lastCloseTimestamp:J

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v7, 0x96

    cmp-long p2, v2, v7

    if-gez p2, :cond_12

    move p2, v0

    goto :goto_7

    :cond_12
    move p2, v1

    :goto_7
    if-ne v5, v6, :cond_13

    .line 17
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez v2, :cond_18

    if-eqz p2, :cond_13

    goto :goto_8

    .line 18
    :cond_13
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p2, v0, :cond_16

    if-eq p2, p1, :cond_14

    goto :goto_8

    .line 19
    :cond_14
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p0, :cond_15

    goto :goto_8

    :cond_15
    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_8

    .line 20
    :cond_16
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p0, :cond_17

    goto :goto_8

    :cond_17
    invoke-virtual {p0, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_18
    :goto_8
    return-void

    .line 21
    :goto_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    .line 22
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v0, p1, :cond_1a

    .line 24
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_19

    .line 25
    new-instance p1, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 26
    :cond_19
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1c

    .line 27
    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 28
    :cond_1a
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p2, p1, :cond_1b

    .line 29
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 30
    :cond_1b
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p2, p1, :cond_1c

    .line 31
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1c
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

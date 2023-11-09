.class public final Lcom/motorola/camera/mode/ModeChangeHelper;
.super Ljava/lang/Object;
.source "ModeChangeHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/mode/ModeChangeHelper;

.field public static final handler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/motorola/camera/mode/ModeChangeHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;Lcom/motorola/camera/scenedetection/scene/Scene$Type;)Z

    move-result p0

    return p0
.end method

.method public static final switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;Lcom/motorola/camera/scenedetection/scene/Scene$Type;)Z
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "SRC_MODE"

    .line 3
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "MODE_DIRECTION"

    .line 4
    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p3, "SWITCH_CASE"

    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_1

    .line 5
    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v2, p3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v2, p3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    const-string p1, "MODE"

    const/4 p3, 0x1

    if-ne p2, v4, :cond_2

    .line 7
    invoke-virtual {v2, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_3

    :cond_2
    const/16 v4, 0xa

    if-ne p2, v4, :cond_5

    .line 9
    invoke-static {p3}, Lcom/motorola/camera/MotoLiveStreamHelper;->createMotoLiveStreamIntent(Z)Landroid/content/Intent;

    move-result-object p1

    .line 10
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {p2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 p4, 0x10000

    .line 12
    invoke-virtual {p2, p1, p4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    move p1, p3

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 14
    sget-object p1, Lcom/motorola/camera/mode/ModeChangeHelper;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/EventListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 15
    :cond_4
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_4

    :cond_5
    const/16 v4, 0x14

    if-ne p2, v4, :cond_7

    .line 16
    invoke-static {}, Lcom/motorola/camera/YouTubeLiveStreamHelper;->isYouTubeLiveSupported()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    sget-object p1, Lcom/motorola/camera/mode/ModeChangeHelper;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/EventListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 18
    :cond_6
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_4

    :cond_7
    const/16 v0, 0x16

    if-ne p2, v0, :cond_8

    .line 19
    sget-object p1, Lcom/motorola/camera/mode/ModeChangeHelper;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/EventListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 20
    :cond_8
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 21
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    .line 24
    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(IZ)I

    move-result p1

    .line 25
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 27
    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_a

    .line 28
    :goto_2
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 31
    iget-object p1, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string p2, "SETTING"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz p4, :cond_b

    .line 32
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string p2, "get(SettingsManager.ZOOM).value"

    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const-string p2, "PREVIOUS_ZOOM"

    .line 35
    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 36
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "TYPE"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    :cond_b
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_3
    move v1, p3

    goto :goto_4

    .line 38
    :cond_c
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_4
    return v1
.end method

.method public static final switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/scenedetection/scene/Scene$Type;)Z
    .locals 3

    .line 39
    invoke-static {p2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 42
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    .line 45
    :goto_0
    invoke-static {p0, p1, p2, v0, p3}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;Lcom/motorola/camera/scenedetection/scene/Scene$Type;)Z

    move-result p0

    return p0
.end method

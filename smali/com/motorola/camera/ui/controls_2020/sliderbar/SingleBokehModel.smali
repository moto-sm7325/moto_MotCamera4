.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/SingleBokehModel;
.super Ljava/lang/Object;
.source "SingleBokehModel.kt"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;


# instance fields
.field public mEventHandler:Lcom/motorola/camera/EventListener;

.field public mSliderCallback:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehSliderBar;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehSliderBar;Lcom/motorola/camera/EventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SingleBokehModel;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SingleBokehModel;->mSliderCallback:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehSliderBar;

    return-void
.end method


# virtual methods
.method public getBokehLevel()I
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/lang/Integer;

    const-string/jumbo v0, "value"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isPortraitBokehSupported()Z
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SingleBokehModel;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needFaceDetect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBokehLevelChanged(I)V
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onBokehLevelStopChanged()V
    .locals 0

    return-void
.end method

.method public onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 5
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onSingleShot(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    const/16 p0, 0x12

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 5
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.SINGLE_BOKEH_LEVEL).value"

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string v0, "LEVEL_SETTINGS"

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setupPortraitBokeh()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SingleBokehModel;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 3
    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MIN_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v2}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 4
    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v3}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 5
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 6
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v4, Ljava/lang/Integer;

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_3

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :cond_1
    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    aget v0, v1, v6

    aget v4, v2, v6

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    aget v4, v2, v6

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    move-object v4, v0

    .line 10
    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 11
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SingleBokehModel;->mSliderCallback:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehSliderBar;

    const-string v0, "bokehLevel"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v0

    aget v2, v2, v6

    aget v1, v1, v6

    invoke-interface {p0, v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehSliderBar;->onBokehLevelInitialized(III)V

    return-void
.end method

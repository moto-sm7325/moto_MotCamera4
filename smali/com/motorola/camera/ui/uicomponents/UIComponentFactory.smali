.class public Lcom/motorola/camera/ui/uicomponents/UIComponentFactory;
.super Ljava/lang/Object;
.source "UIComponentFactory.java"


# direct methods
.method public static getComponents([Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;Landroid/view/View;Lcom/motorola/camera/EventListener;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;",
            "Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;",
            "Landroid/view/View;",
            "Lcom/motorola/camera/EventListener;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/ui/uicomponents/UIComponent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_f

    aget-object v3, p0, v2

    .line 3
    iget-object v4, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mOrder:Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;

    if-eq v4, p1, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    iget-object v4, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mParentResId:Ljava/lang/Integer;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    if-nez v4, :cond_4

    .line 6
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2

    goto/16 :goto_3

    .line 7
    :cond_2
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;

    invoke-direct {v3, v5, p3}, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    .line 8
    :cond_3
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;

    invoke-direct {v3, v5, p3}, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    :goto_2
    move-object v5, v3

    goto/16 :goto_3

    .line 9
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 10
    :pswitch_1
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_3

    .line 11
    :cond_5
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 12
    :pswitch_2
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 13
    :pswitch_3
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 15
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 16
    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 17
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 18
    :pswitch_6
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 19
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 20
    :pswitch_7
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 21
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 22
    :pswitch_8
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 23
    :pswitch_9
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 24
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 25
    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->DOCUMENT_SCAN:Lcom/motorola/camera/AppFeatures$Feature;

    .line 26
    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v3, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 27
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 28
    :pswitch_a
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 29
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 30
    :pswitch_b
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 31
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_d

    .line 32
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 33
    :pswitch_c
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 34
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 35
    :pswitch_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 36
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    .line 37
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v5, v4, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_3

    .line 38
    :cond_6
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    .line 39
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v5, v4, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_3

    .line 40
    :pswitch_e
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 41
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 42
    :pswitch_f
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 43
    :pswitch_10
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 44
    :pswitch_11
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 45
    :pswitch_12
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_3

    .line 46
    :cond_7
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    .line 47
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v5, v4, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_3

    .line 48
    :pswitch_13
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 49
    :pswitch_14
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 50
    :pswitch_15
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 51
    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SELECTIVE_COLOR:Lcom/motorola/camera/AppFeatures$Feature;

    .line 52
    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v3, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 53
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 54
    :pswitch_16
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 55
    :pswitch_17
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 56
    :pswitch_18
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 57
    :pswitch_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_d

    .line 58
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_3

    .line 59
    :cond_8
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 60
    :pswitch_1a
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 61
    :pswitch_1b
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 62
    :pswitch_1c
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 63
    :pswitch_1d
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 64
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 65
    :pswitch_1e
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 66
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 67
    :pswitch_1f
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_3

    .line 68
    :cond_9
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 69
    :pswitch_20
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 70
    :pswitch_21
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    .line 71
    iget-object v3, v3, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 72
    iget-object v3, v3, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    .line 73
    invoke-interface {v3}, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;->getHasCutout()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 74
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 75
    :pswitch_22
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 76
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 77
    :pswitch_23
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 78
    :pswitch_24
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 79
    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    .line 80
    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v3, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    .line 81
    :cond_a
    new-instance v5, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 82
    :pswitch_25
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 83
    :pswitch_26
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 84
    :pswitch_27
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 85
    :pswitch_28
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 86
    :pswitch_29
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    .line 87
    :cond_b
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    .line 88
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v5, v4, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto :goto_3

    .line 89
    :pswitch_2a
    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    .line 90
    :cond_c
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    .line 91
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v5, v4, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto :goto_3

    .line 92
    :pswitch_2b
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 93
    :pswitch_2c
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 94
    :pswitch_2d
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 95
    :pswitch_2e
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 96
    :pswitch_2f
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/DialogPopup;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/DialogPopup;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 97
    :pswitch_30
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 98
    :pswitch_31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 99
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 100
    :pswitch_32
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    :cond_d
    :goto_3
    if-eqz v5, :cond_e

    .line 101
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

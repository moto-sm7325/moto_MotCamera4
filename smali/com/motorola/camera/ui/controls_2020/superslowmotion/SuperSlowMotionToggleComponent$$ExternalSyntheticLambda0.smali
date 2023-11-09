.class public final synthetic Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 14

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->superSlowMotionSetting:Lcom/motorola/camera/settings/Setting;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "isEnabled"

    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->setupImageDrawable(Z)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p0, :cond_1

    const p0, 0x7f1103ff

    goto :goto_0

    :cond_1
    const p0, 0x7f1103fe

    :goto_0
    move v4, p0

    .line 11
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x1

    .line 13
    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v2

    const/16 v5, 0x7d0

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v2, :cond_5

    const/4 v6, 0x3

    if-eq v2, v6, :cond_4

    const/4 v6, 0x4

    if-eq v2, v6, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Text Description is empty for Setting Confirmation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x2

    :goto_1
    move v6, v0

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v0

    move-object v1, v5

    :goto_3
    if-nez v1, :cond_6

    const/16 v0, 0xfa0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 18
    :cond_6
    new-instance v13, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v12, 0x0

    move-object v0, v13

    move v1, v2

    move v2, v7

    invoke-direct/range {v0 .. v12}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 20
    sput-object v13, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p1, v13}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    return-void
.end method

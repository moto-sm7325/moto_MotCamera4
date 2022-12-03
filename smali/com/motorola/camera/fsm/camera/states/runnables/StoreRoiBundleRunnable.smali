.class public Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;
.source "StoreRoiBundleRunnable.java"


# instance fields
.field public final mBracketSize:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-static {v0}, Landroidx/fragment/R$anim;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;->mBracketSize:F

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 4
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p3, :cond_1

    .line 5
    sget-object p2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 6
    sget-object p2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 7
    sget-object p3, Lcom/motorola/camera/AppFeatures$Feature;->BRACKET_SIZE_FIXED:Lcom/motorola/camera/AppFeatures$Feature;

    .line 8
    iget-object p2, p2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;->mBracketSize:F

    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const p2, 0x3e19999a    # 0.15f

    int-to-float p0, p0

    mul-float/2addr p0, p2

    :goto_0
    float-to-int p0, p0

    const-string p2, "ROI_WIDTH"

    .line 12
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "ROI_HIGHT"

    .line 13
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ROI_WEIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "ROI_WEIGHT"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    sget-object p0, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 19
    check-cast p0, Landroid/graphics/Point;

    .line 20
    iget p2, p0, Landroid/graphics/Point;->x:I

    const-string p3, "SURFACE_WIDTH"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    iget p0, p0, Landroid/graphics/Point;->y:I

    const-string p2, "SURFACE_HEIGHT"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
